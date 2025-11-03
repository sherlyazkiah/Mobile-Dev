# master_plan

## Practical Assignment 1: Basic State with Model-View

**1. Complete the lab steps, then document the final results with a GIF and explanation in the file README.md! If you find any errors or issues, please fix them.**

<img src="src/practicum1.gif" width=200>

**2. Explain the purpose of step 4 in the practicum! Why is this done?**

This step is done to separates the data (model) from the user interface (view), allowing for a clear structure and easier maintenance. By doing this, changes in the data can be managed efficiently without directly affecting the UI components. This is a fundamental principle of the Model-View pattern, ensuring better organization and scalability of the application.

**3. Why is the plan variable needed in step 6 of the lab? Why is it a constant?**

The plan variable is used to store all the data of the current plan displayed on the screen.

The Plan object contains:

- name: the plan’s name

- tasks: a list of tasks (List<Task>)

So, plan acts as the main state of the PlanScreen. Whenever the user adds, edits, or checks off a task, the changes are saved into this variable. 

Using const makes the object immutable (cannot be changed accidentally during runtime), which helps maintain data consistency and prevents unexpected behavior in the program.

**4. Capture the results of Step 9 as a GIF, then explain what you have created!**

<img src="src/practicum1.gif" width=200>

The GIF demonstrates how the interface reacts when the user interacts with it. For example, when we tap the + button, a new task appears. We can type a description into the TextFormField. Then, checking the box marks the task as done.

**5. What is the use of the methods in Steps 11 and 13 in the *lifecycle state*?**

- The initState() method runs once when the widget is created. It initializes the ScrollController and adds a listener to automatically close the keyboard when the user scrolls. This belongs to the widget’s initialization phase.

- The dispose() method runs when the widget is removed. It cleans up resources like the ScrollController to prevent memory leaks, marking the cleanup phase of the widget’s lifecycle.

**6. Submit your practicum report in the form of a commit link or GitHub repository to the agreed lecturer!**

## Practical Assignment 2: InheritedWidget

**1. Complete the lab steps, then document the final results with a GIF and explanation in the file README.md! If you find any errors or issues, please correct them according to the application's purpose.**

<img src="src/practicum2.gif" width=200>

**2. Explain what is meant InheritedWidgetby step 1! Why is it used InheritedNotifier?**

InheritedWidget allows data sharing between widgets in the widget tree — especially from parent to children, without needing to manually pass data through every widget’s constructor.

Instead of using just InheritedWidget, we use InheritedNotifier because it combines InheritedWidget with a ChangeNotifier-like mechanism (ValueNotifier). This makes it possible to automatically trigger UI updates whenever the data (Plan) changes — without manually calling setState().

**3. Explain the purpose of the method in step 3 of the practicum! Why is this done?**

Purpose:

- completedCount: calculates how many tasks have been marked as complete.

- completenessMessage: creates a simple progress summary (for example, “2 out of 5 tasks”).

These methods are done to separate logic from the UI — instead of calculating progress directly inside widgets, we keep this logic in the data model (Plan). This follows the Model-View separation principle, which makes the code cleaner, reusable, and easier to maintain.

**4. Capture the results of Step 9 as a GIF, then explain what you have created!**

<img src="src/practicum2.gif" width=200>

The app displays a Master Plan screen containing a list of tasks. Users can add new tasks using the + FloatingActionButton, edit task descriptions through the TextFormField, and mark tasks as complete or incomplete using a checkbox. At the bottom of the screen, a progress message such as “3 out of 6 tasks” is displayed to indicate completion status.

**5. Submit your practicum report in the form of a commit link or GitHub repository to the agreed lecturer!**

## Practical Assignment 3: State on Multiple Screens

**1. Complete the lab steps, then document the final results with a GIF and explanation in the file README.md! If you find any errors or issues, please correct them according to the application's purpose.**

<img src="src/practicum3.gif" width=200>

In this practical, we created a Flutter app that manages state across multiple screens using a shared provider (InheritedNotifier/ChangeNotifier). The project includes two main screens — PlanCreatorScreen and PlanScreen — that both access and modify the same state data.

**2. Based on the Practical 3 that you have done, explain the meaning of the following diagram!**

<img src="src/question2.png">

The diagram illustrates the flow of state between two screens:

Left side (blue) shows the structure before navigation:

- MaterialApp → main app container.

- PlanProvider → provides shared state for the entire widget tree.

- PlanCreatorScreen → allows users to create or edit a plan.

- Inside it, a Column contains:

    - TextField for entering new task names.

    - Expanded + ListView for displaying the current task list.

Right side (green) shows the structure after navigation:

- MaterialApp → still the main app container.

- PlanScreen → displays the created plan.

- Inside a Scaffold, a Column contains:

    - Expanded + ListView to show all tasks.

    - SafeArea + Text to display progress (e.g., “3 out of 6 tasks completed”).

**3. Capture the results of Step 14 as a GIF, then explain what you have created!**

<img src="src/practicum3.gif" width=200>

The GIF display how a user can add a task on the creator screen, navigate to the plan screen, and see the updated progress message like “2 out of 5 tasks completed.”

**4. Submit your practicum report in the form of a commit link or GitHub repository to the agreed lecturer!**
