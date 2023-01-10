import 'package:flutter/material.dart';
import 'package:flutter_authentification/pages/login.dart';
import 'package:flutter_authentification/pages/register_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //initially show Login Page
  bool showLoginPage = true;

  //toggle between login and register
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage == true) {
      return Login(
        onTap: togglePages,
      );
    } else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}
