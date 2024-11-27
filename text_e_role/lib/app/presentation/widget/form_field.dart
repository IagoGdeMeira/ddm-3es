import 'package:flutter/material.dart';

class FormField extends StatelessWidget {
  final String placeholder;
  final TextEditingController controller;
  final IconData? icon;
  final TextInputType? keyboardType;

  const FormField({
    super.key,
    required this.placeholder,
    required this.controller,
    this.icon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        hintText: placeholder,
        prefixIcon: icon != null ? Icon(icon) : null,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(52, 39, 163, 1),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(20),
          ),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
