import 'package:flutter/material.dart';
import 'package:text_e_role/app/routes.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoutes(),
      theme: ThemeData(primarySwatch: Colors.blue),
      title: 'Text&Role',
    );
  }
}