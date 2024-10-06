import 'package:flutter/material.dart';
import 'package:text_e_role/app/widget/user_form.dart';
import 'package:text_e_role/app/widget/user_list.dart';


class Routes {
  static const String HOME = '/';
  static const String USER_FORM = '/user-form';
  static const String USER_LIST = '/user-list';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      HOME: (context) => const UserList(),
      USER_FORM: (context) => const UserForm(),
      USER_LIST: (context) => const UserList()
    };
  }
}