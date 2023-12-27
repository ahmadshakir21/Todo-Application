import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/src/utils/custom_appbar.dart';
import 'package:todo_app/src/utils/custom_textfield.dart';

import '../utils/app_color.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            CustomAppBar(
                iconData: Icons.arrow_back_rounded,
                iconDataImage: Icons.person,
                onPressed: () {
                  context.goNamed('home_screen');
                }),
            SizedBox(
              height: height * 0.03,
            ),
            CustomTextField(hintText: "Enter New Task"),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextField(
              hintText: "New Task Description",
              maxLines: 7,
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        width: width * 0.45,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.buttonColor,
          child: Text(
            "Add New Task",
            style: Theme.of(context).textTheme.labelSmall!.copyWith(color: AppColors.todoTileColor),
          ),
        ),
      ),
    ));
  }
}
