import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double days = 30;
  final String name = "GSOC";
  final num n = 30.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Fluttejjjjr world $days \n this is ggg for "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
