import 'package:flutter/material.dart';
import 'package:text_e_role/app/routes.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.accountCreation);
              },
              child: const Text('Account Creation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              }, child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.passwordRecovery);
              },
              child: const Text('Password Recovery'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.unloggedLayout);
              },
              child: const Text('Password Recovery'),
            ),
          ],
        ),
      ),
    );
  }
}