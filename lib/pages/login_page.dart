import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPageContent extends StatefulWidget {
  @override
  _LoginPageContentState createState() => _LoginPageContentState();
}

class _LoginPageContentState extends State<LoginPageContent> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHomePage(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome to $name"),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Username Not Empty';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Password Not empty';
                      } else if (value.length < 6) {
                        return 'Password Must be 6 Caratcer';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () => moveToHomePage(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
