import 'package:flutter/material.dart';

import 'app_color.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  Color buttonColor;
  Function onPressed;

  CustomButton({super.key, required this.buttonText, required this.buttonColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(color: AppColors.todoTileColor),
        ),
      ),
    );
  }
}
