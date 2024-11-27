import 'package:flutter/material.dart';
import 'package:text_e_role/app/presentation/widget/form_button.dart' as form_button;
import 'package:text_e_role/app/presentation/widget/form_field.dart' as form_field;


class AccountCreationView extends StatefulWidget {
  @override
  _AccountCreationControllerState createState() =>
      _AccountCreationControllerState();
}

class _AccountCreationControllerState extends State<AccountCreationView> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
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
              'Text&Role',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Create a new account',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'To create a new account, you must inform the information required on the fields below. After you do it, press the button on the bottom and your account will be created.',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            form_field.FormField(
              placeholder: 'Username',
              controller: usernameController,
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 16),
            form_field.FormField(
              placeholder: 'E-mail Address',
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            form_field.FormField(
              placeholder: 'Password',
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 20),
            form_button.FormButton(
              text: 'Create Account',
              onPressed: () {
                // TODO: Implement account creation logic using the controller values
              },
            ),
          ],
        ),
      ),
    );
  }
}