import 'package:first_app/utils/routes.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'widgets/themes.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.dartTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPageContent(),
        MyRoutes.homeRoute: (context) => HomePageContent(),
        MyRoutes.loginRoute: (context) => HomePageContent()
      },
    );
    return materialApp;
  }
}
