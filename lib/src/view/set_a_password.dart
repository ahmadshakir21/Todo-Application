import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/src/utils/app_color.dart';
import 'package:todo_app/src/utils/custom_button.dart';

import '../utils/custom_appbar.dart';

class SetAPassword extends StatelessWidget {
  const SetAPassword({super.key});

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
                appbarTitle: "Setting a Password",
                onPressed: () {
                  context.goNamed('home_screen');
                }),
            SizedBox(
              height: height * 0.03,
            ),
            ////////////////////////////////////////////////////////////////////
            Center(
              child: Text(
                'Create an account',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            SizedBox(
              width: width * 1,
              height: height * 0.6,
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.8 / 0.6,
                ),
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(4),
                  width: width * 0.01,
                  height: height * 0.01,
                  child: Center(
                    child: index == 9
                        ? const SizedBox()
                        : MaterialButton(
                            onPressed: () {},
                            color: AppColors.primaryColor,
                            minWidth: 60,
                            height: 60,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                            child: index == 11
                                ? const Icon(
                                    Icons.backspace_outlined,
                                    color: AppColors.scaffoldColor,
                                  )
                                : index == 10
                                    ? Text(
                                        "0",
                                        style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.scaffoldColor),
                                      )
                                    : Text(
                                        "${index + 1}",
                                        style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.scaffoldColor),
                                      ),
                          ),
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////
          ],
        ),
      ),
      floatingActionButton: CustomButton(buttonText: "Save", buttonColor: AppColors.buttonColor, onPressed: () {}),
    ));
  }
}
