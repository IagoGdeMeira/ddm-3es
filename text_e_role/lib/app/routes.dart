import 'package:flutter/material.dart';
import 'package:text_e_role/app/presentation/layout/unlogged_layout.dart';
import 'package:text_e_role/app/presentation/view/account_creation_view.dart';
import 'package:text_e_role/app/presentation/view/home_view.dart';
import 'package:text_e_role/app/presentation/view/login_view.dart';
import 'package:text_e_role/app/presentation/view/password_recovery_view.dart';


class Routes {
  static const String accountCreation = '/account_creation';
  static const String home = '/';
  static const String login = '/login';
  static const String passwordRecovery = '/password_recovery';
  static const String unloggedLayout = '/TEST-ul';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      accountCreation: (context) => const AccountCreationView(),
      home: (context) => const HomeView(),
      login: (context) => const LoginView(),
      passwordRecovery: (context) => const PasswordRecoveryView(),
      unloggedLayout: (context) => const UnloggedLayout(),
    };
  }
}