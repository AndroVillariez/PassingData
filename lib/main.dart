import 'package:flutter/material.dart';
import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Passing Data',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text(
              "First Page",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          body: const FirstPage(),
        ));
  }
}

//Andro Edsarev S. Villariez
