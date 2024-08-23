import 'package:flutter/material.dart';

class ContactApp extends StatefulWidget {
  const ContactApp({super.key});

  @override
  State<ContactApp> createState() => _ContactState();
}

class _ContactState extends State<ContactApp> {
  String name = "Stateful Widget";

  @override
  void initState() {
    super.initState();
    String title = "Test init state";
    debugPrint(title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flutter App"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                name = value;
              });
              debugPrint(value);
            },
          ),
          Text(" $name"),
        ],
      ),
    );
  }
}