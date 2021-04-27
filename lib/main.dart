import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringVegetables(thaila: true, taka: 200);
    return MaterialApp(
      home: HomePageContent(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

bringVegetables({@required bool thaila, int taka = 100}) {
//Content
}
