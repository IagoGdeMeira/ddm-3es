import 'package:flutter/material.dart';
import 'package:text_e_role/app/presentation/widget/form_button.dart' as form_button;
import 'package:text_e_role/app/presentation/widget/form_field.dart' as form_field;


class LoginView extends StatefulWidget {
  @override
  _LoginControllerState createState() => _LoginControllerState();
}

class _LoginControllerState extends State<LoginView> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),
            ),
            const Text(
              'Text&Role',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            form_field.FormField(
              placeholder: 'E-mail or username',
              controller: loginController,
              icon: Icons.person,
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 16),
            form_field.FormField(
              placeholder: 'Password',
              controller: passwordController,
              icon: Icons.lock,
              keyboardType: TextInputType.visiblePassword, // Or TextInputType.password for hiding
            ),
            const SizedBox(height: 20),
            form_button.FormButton(
              text: 'Login',
              onPressed: () { 
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Implement forgot password logic
                  },
                  child: const Text(
                    'Click here to get a new one',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You have no account yet?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Implement sign up logic
                  },
                  child: const Text(
                    'Click here to create a new account',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}