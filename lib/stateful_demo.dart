import 'package:flutter/material.dart';

class StatefulDemo extends StatefulWidget {
  const StatefulDemo({super.key});

  @override
  State<StatefulDemo> createState() => _StatefulDemo();
}

class _StatefulDemo extends State<StatefulDemo> {
  List<String> names = ["Mark", "Elon", "Jhon"];
  int i = 0;
  String title = "Stateful Widget";
  Color color = Colors.purple;
  // String name = "State Action";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(" $title"),
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: color,
        child: const Icon(Icons.color_lens),
        onPressed: () {
          setState(() {
            color = Colors.amber;
          });
        },
      ),
      body: Center(
        child: Column(
          children: [
            Text("My name is ${names[i]}"),
            ElevatedButton(
                onPressed: () {
                  if (i < names.length - 1) {
                    setState(() {
                      i++;
                    });
                  }
                },
                child: const Text("Next")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  if (i != 0) {
                    setState(() {
                      i--;
                    });
                  }
                },
                child: const Text("Go back")),
          ],
        ),
      ),
    );
  }
}