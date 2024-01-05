import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/src/model/task_todo_data_model.dart';
import 'package:todo_app/src/services/task_todo_database_helper.dart';
import 'package:todo_app/src/utils/custom_appbar.dart';
import 'package:todo_app/src/utils/custom_button.dart';
import 'package:todo_app/src/utils/custom_textfield.dart';
import 'package:uuid/uuid.dart';

import '../utils/app_color.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void addTaskTodo() async {
    TaskTodoDataModel taskTodoDataModel = TaskTodoDataModel(
        taskId: const Uuid().v4(),
        taskTitle: titleController.text.trim(),
        taskDescription: descriptionController.text.trim(),
        taskDateTime: DateTime.now(),
        taskIsCompleted: false,
        taskIsImportant: false);
    await TaskTodoDatabaseHelper.instance.insert(taskTodoDataModel: taskTodoDataModel);
  }

  @override
  void dispose() {
    titleController.dispose();
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
                      appbarTitle: "Add Task Screen",
                      onPressed: () {
                        context.goNamed('home_screen');
                      }),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomTextField(controller: titleController, hintText: "Enter New Task"),
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
            floatingActionButton: CustomButton(buttonText: "Add Task", buttonColor: AppColors.buttonColor, onPressed: addTaskTodo)));
  }
}
