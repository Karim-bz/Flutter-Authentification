import 'package:flutter/material.dart';
import 'package:flutter_authentification/components/square_tile.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class Login extends StatelessWidget {
  Login({super.key});

  // text Editing Controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // SignIn
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),
            //logo
            Icon(
              Icons.lock,
              size: 100,
            ),
            SizedBox(height: 40),
            //Welcome back, you've been missed!
            Text(
              'Welcome back, you\'ve been missed!',
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            SizedBox(height: 25),
            //username textfield
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            SizedBox(height: 10),
            //password textfield
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            SizedBox(height: 10),
            //forgot password
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password ?',
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            //SignIn Button
            MyButton(onTap: signUserIn),
            SizedBox(height: 40),
            //or continue with
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            //google + apple sign in buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SquareTile(imagePath: 'lib/images/google.png'),
                SizedBox(width: 25),
                SquareTile(imagePath: 'lib/images/apple.png'),
              ],
            ),
            SizedBox(height: 40),
            //not a member register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member!',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(width: 4),
                Text(
                  'Register Now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
