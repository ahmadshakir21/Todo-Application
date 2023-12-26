import 'package:flutter/material.dart';
import 'package:todo_app/src/utils/custom_appbar.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({super.key});

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
            const CustomAppBar(iconData: Icons.arrow_back_rounded, iconDataImage: Icons.person),
            SizedBox(
              height: height * 0.025,
            ),
          ],
        ),
      ),
    ));
  }
}
