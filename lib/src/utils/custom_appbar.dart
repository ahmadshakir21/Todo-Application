import 'package:flutter/material.dart';
import 'package:todo_app/src/utils/app_color.dart';

class CustomAppBar extends StatelessWidget {
  final IconData iconData;
  final String appbarTitle;
  final Function onPressed;
  double? horizontal;
  CustomAppBar({super.key, required this.iconData, required this.appbarTitle, required this.onPressed, this.horizontal});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        IconButton(onPressed: () => onPressed(), color: AppColors.iconColorSecondary, icon: Icon(iconData)),
        SizedBox(
          width: width * 0.05,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontal ?? 0.0),
          child: Text(
            appbarTitle,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
