import 'package:flutter/material.dart';
import 'package:text_e_role/app/widget/user_form.dart';
import 'package:text_e_role/app/widget/user_list.dart';


class Routes {
  static const String home = '/';
  static const String userForm = '/user-form';
  static const String userList = '/user-list';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const UserList(),
      userForm: (context) => const UserForm(),
      userList: (context) => const UserList()
    };
  }
}