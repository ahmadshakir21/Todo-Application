import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/src/utils/app_color.dart';
import 'package:todo_app/src/utils/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            const CustomAppBar(iconData: Icons.menu, iconDataImage: Icons.person),
            SizedBox(
              height: height * 0.025,
            ),
            //TODO: Chnage the name of the user
            Text(
              "What's up , Ahmad",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Text(
              "My Tasks",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              width: width * 1,
              height: height * 0.15,
              decoration: BoxDecoration(color: AppColors.todoTileColor, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "40 Tasks",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      "Personal",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      width: width * 0.9,
                      height: height * 0.01,
                      decoration: BoxDecoration(
                        color: AppColors.todoTaskVolume,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Container(
                              width: width * 0.7,
                              height: height * 0.01,
                              decoration: BoxDecoration(
                                color: AppColors.buttonColor,
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Text(
              "Today Tasks",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            SizedBox(
              height: height * 0.015,
            ),
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.go('/task_detail_screen');
                  },
                  child: Container(
                    width: width * 1,
                    height: height * 0.07,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(color: AppColors.todoTileColor, borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.06,
                          width: width * 0.06,
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(border: Border.all(color: AppColors.buttonColor, width: 2.5), shape: BoxShape.circle),
                        ),
                        Text(
                          "My Task My Task",
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(color: AppColors.textColorPrimary),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.buttonColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    ));
  }
}
