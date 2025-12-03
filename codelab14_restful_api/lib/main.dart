import './model/pizza.dart';
import 'package:flutter/material.dart';
import 'httphelper.dart';
import 'pizza_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo - Sherly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<Pizza>> pizzas;

  @override
  void initState() {
    super.initState();
    pizzas = callPizzas();
  }

  Future<List<Pizza>> callPizzas() async {
    HttpHelper helper = HttpHelper();
    return await helper.getPizzaList();
  }

  void refreshList() {
    setState(() {
      pizzas = callPizzas();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('JSON - Sherly')),
      body: FutureBuilder(
        future: pizzas,
        builder: (context, AsyncSnapshot<List<Pizza>> snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Something went wrong'));
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          List<Pizza> pizzaList = snapshot.data!;

          return ListView.builder(
            itemCount: pizzaList.length,
            itemBuilder: (BuildContext context, int index) {
              Pizza p = pizzaList[index];

              return Dismissible(
                key: Key(p.id.toString()),
                direction: DismissDirection.endToStart,

                onDismissed: (direction) async {
                  HttpHelper helper = HttpHelper();

                  setState(() {
                    pizzaList.removeAt(index);
                  });

                  await helper.deletePizza(p.id);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${p.pizzaName} deleted")),
                  );
                },

                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  child: const Icon(Icons.delete, color: Colors.white, size: 30),
                ),

                child: ListTile(
                  title: Text(p.pizzaName),
                  subtitle: Text("${p.description} - € ${p.price}"),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PizzaDetailScreen(
                          pizza: p,
                          isNew: false,
                        ),
                      ),
                    ).then((value) => refreshList());
                  },
                ),
              );
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PizzaDetailScreen(
                pizza: Pizza(
                  id: 0,
                  pizzaName: '',
                  description: '',
                  price: 0,
                  imageUrl: '',
                ),
                isNew: true,
              ),
            ),
          ).then((value) => refreshList());
        },
      ),
    );
  }
}
