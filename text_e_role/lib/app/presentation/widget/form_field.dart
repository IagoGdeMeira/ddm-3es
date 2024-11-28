import 'package:flutter/material.dart';
import 'package:text_e_role/app/app_colors.dart';

class FormField extends StatelessWidget {
  final String placeholder;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final IconData? icon;

  const FormField({
    Key? key, 
    required this.placeholder,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.icon,
  }) : super(key: key);

  static const _borderFormat = BorderRadius.only(
    topLeft: Radius.circular(5),
    bottomLeft: Radius.circular(5),
    topRight: Radius.circular(20),
    bottomRight: Radius.circular(20),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null) ...[
          SizedBox(
            width: 60,
            height: 60,
            child: Icon(icon, color: AppColors.mainText),
          ),
          const SizedBox(width: 10),
        ],
        Expanded(
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: placeholder,
              filled: true,
              fillColor: AppColors.inputBG,
              border: const OutlineInputBorder(
                borderRadius: _borderFormat,
                borderSide: BorderSide(color: Colors.cyan, width: 3)
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: _borderFormat,
                borderSide: BorderSide(color: AppColors.mainText, width: 2),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }
}