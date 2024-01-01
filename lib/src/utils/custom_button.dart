import 'package:flutter/material.dart';

import 'app_color.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  Color buttonColor;
  double? widthOfButton;
  Function onPressed;

  CustomButton({super.key, required this.buttonText, required this.buttonColor, this.widthOfButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double effectiveWidth = widthOfButton ?? 0.45;
    return Container(
      width: width * effectiveWidth,
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
