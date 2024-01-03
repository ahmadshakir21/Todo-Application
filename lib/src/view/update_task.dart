import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/src/utils/custom_appbar.dart';
import 'package:todo_app/src/utils/custom_button.dart';
import 'package:todo_app/src/utils/custom_textfield.dart';

import '../utils/app_color.dart';

class UpdateTask extends StatefulWidget {
  const UpdateTask({super.key});

  @override
  State<UpdateTask> createState() => _UpdateTaskState();
}

class _UpdateTaskState extends State<UpdateTask> {
  TextEditingController taskController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    taskController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

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
                      appbarTitle: "Update Task Screen",
                      onPressed: () {
                        context.goNamed('task_detail_screen');
                      }),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomTextField(controller: taskController, hintText: "Enter New Task"),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomTextField(
                    controller: descriptionController,
                    hintText: "New Task Description",
                    maxLines: 7,
                  )
                ],
              ),
            ),
            floatingActionButton: CustomButton(buttonText: "Save", buttonColor: AppColors.buttonColor, onPressed: () {})));
  }
}
