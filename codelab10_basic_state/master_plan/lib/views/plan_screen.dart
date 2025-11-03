import 'package:flutter/material.dart';
import '../models/data_layer.dart';
import '../provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;
  const PlanScreen({super.key, required this.plan});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  final Map<int, TextEditingController> _controllers = {};

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).unfocus(); // tutup keyboard saat scroll
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  Widget _buildAddTaskButton(BuildContext context, Plan currentPlan) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      onPressed: () {
        final planIndex =
            plansNotifier.value.indexWhere((p) => p.name == currentPlan.name);
        if (planIndex == -1) return;

        final updatedTasks =
            List<Task>.from(currentPlan.tasks)..add(const Task());
        final updatedPlan = Plan(
          name: currentPlan.name,
          tasks: updatedTasks,
        );

        plansNotifier.value = List<Plan>.from(plansNotifier.value)
          ..[planIndex] = updatedPlan;
      },
      child: const Icon(Icons.add),
    );
  }

  Widget _buildTaskTile(Task task, int index, Plan currentPlan, ValueNotifier<List<Plan>> plansNotifier) {
    final controller = _controllers.putIfAbsent(
      index,
      () => TextEditingController(text: task.description),
    );

    if (controller.text != task.description) {
      controller.text = task.description;
    }

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          final planIndex =
              plansNotifier.value.indexWhere((p) => p.name == currentPlan.name);
          if (planIndex == -1) return;

          final updatedTasks = List<Task>.from(currentPlan.tasks)
            ..[index] = Task(
              description: task.description,
              complete: selected ?? false,
            );

          final updatedPlan = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );

          plansNotifier.value = List<Plan>.from(plansNotifier.value)
            ..[planIndex] = updatedPlan;
        },
      ),
      title: TextField(
        controller: controller,
        onChanged: (text) {
          final planIndex =
              plansNotifier.value.indexWhere((p) => p.name == currentPlan.name);
          if (planIndex == -1) return;

          final updatedTasks = List<Task>.from(currentPlan.tasks)
            ..[index] = Task(description: text, complete: task.complete);

          final updatedPlan = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );

          plansNotifier.value = List<Plan>.from(plansNotifier.value)
            ..[planIndex] = updatedPlan;
        },
      ),
    );
  }

  Widget _buildList(Plan currentPlan, ValueNotifier<List<Plan>> plansNotifier) {
    return ListView.builder(
      controller: scrollController,
      itemCount: currentPlan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(currentPlan.tasks[index], index, currentPlan, plansNotifier),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return ValueListenableBuilder<List<Plan>>(
      valueListenable: plansNotifier,
      builder: (context, plans, _) {
        final Plan currentPlan =
            plans.firstWhere((p) => p.name == widget.plan.name, orElse: () => widget.plan);

        return Scaffold(
          appBar: AppBar(title: Text(currentPlan.name)),
          body: Column(
            children: [
              Expanded(child: _buildList(currentPlan, plansNotifier)),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    currentPlan.completenessMessage,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: _buildAddTaskButton(context, currentPlan),
        );
      },
    );
  }
}
