import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  final int days = 30;
  final String name = "Ahasan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days Days for Flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
