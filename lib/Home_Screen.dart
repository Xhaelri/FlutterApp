import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff0000),
        leading: const Icon(Icons.menu),
        title: const Text("Hello World"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print("Hello Ali");
            },
            icon: const Icon(Icons.star),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            icon: Text("$counter"),
          ),
        ],
      ),
    );
  }
}
