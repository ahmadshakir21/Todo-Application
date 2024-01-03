import 'package:flutter/material.dart';
import 'package:todo_app/src/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  int? maxLines;
  CustomTextField({super.key, required this.controller, required this.hintText, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: Theme.of(context).textTheme.titleMedium,
      decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.primaryColor, // Change the border color here
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.primaryColor, // Change the border color here if needed
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
