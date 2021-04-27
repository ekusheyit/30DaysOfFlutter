import 'package:flutter/material.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(12),
          margin: new EdgeInsets.all(12),
          child: Text('Home Page',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black12,
              )),
        ),
      ),
    );
  }
}
