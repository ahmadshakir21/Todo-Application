import 'package:flutter/material.dart';
import 'package:todo_app/src/utils/app_color.dart';

class CustomAppBar extends StatelessWidget {
  final IconData iconData;
  final IconData iconDataImage;
  const CustomAppBar({super.key, required this.iconData, required this.iconDataImage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, color: AppColors.buttonColorSecondary, icon: Icon(iconData)),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(color: AppColors.buttonColorSecondary, borderRadius: BorderRadius.circular(5)),
          child: Icon(
            iconDataImage,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
