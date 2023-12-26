import 'package:flutter/material.dart';
import 'package:todo_app/src/utils/app_color.dart';

class CustomAppBar extends StatelessWidget {
  final IconData iconData;
  final IconData iconDataImage;
  final Function onPressed;
  const CustomAppBar({super.key, required this.iconData, required this.iconDataImage, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () => onPressed(), color: AppColors.iconColorSecondary, icon: Icon(iconData)),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(color: AppColors.containerForImage, borderRadius: BorderRadius.circular(5)),
          child: Icon(
            iconDataImage,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
