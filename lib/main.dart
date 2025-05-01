import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 2, 2),
          title: const Center(
            child: Text(
              'Sebuah Aplikasi',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1.5),
            ),
          ),
          actions: [Icon(Icons.search, color: Colors.white, size: 30)],
          leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white, size: 30),
          onPressed: () {}),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              
            ],
          ),
        )
      ),
    );
  }
}

