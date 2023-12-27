import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/src/utils/app_color.dart';
import 'package:todo_app/src/utils/custom_appbar.dart';
import 'package:todo_app/src/utils/custom_button.dart';

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
            CustomAppBar(
                iconData: Icons.arrow_back_rounded,
                appbarTitle: "Task Detail Screen",
                onPressed: () {
                  context.goNamed('home_screen');
                }),
            SizedBox(
              height: height * 0.025,
            ),
            Text(
              "Task Title",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Text(
              "1 Jan 2024 , 9:00 pm",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Text(
              "jhsdajgfahgfjaghdfjagdskgfjshgdfjasjkgfajsgksjdhaksjhdkajshdkajsdkjashdkajshdkajshdkjahsdkjahskjdahksdjhaksjdhkajshkdajshkdjhdkjshdkjhdkjshdkajhdkjahkdjashkjdhaksjhdkajshdkajshdkajshdjkhfjaghfjasgdfjasgfjasgfjdgasjgfajghfjagfdjagfjadsjfgajgfjasgfjasghfjasgdfhdsajlkhdjHsdkJHSDKjshaKDjhaskjdhskjhksjhdkjhkjhkjfhskldjfhkjhgkjsfdgkljsfhdgjkshdkgjshdkfljghskdjgkjsfhdgjksdfhgjkshfdgjkhfdkjgkdjfgkjgfkjhdfjkhgkjshkdfjgksjdfghksjdfhgkjdfhgjkhkgjhfdkghskjghkfjdgksjdfhgksjfhdgkjdgjh",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(buttonText: "Delete Task", buttonColor: AppColors.deleteColor, onPressed: () {}),
          CustomButton(
              buttonText: "Update Task",
              buttonColor: AppColors.buttonColor,
              onPressed: () {
                context.goNamed('update_task_screen');
              }),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }
}
