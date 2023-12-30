import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/src/utils/app_color.dart';
import 'package:todo_app/src/utils/custom_button.dart';

import '../utils/custom_appbar.dart';

class SetAPassword extends StatefulWidget {
  const SetAPassword({super.key});

  @override
  State<SetAPassword> createState() => _SetAPasswordState();
}

class _SetAPasswordState extends State<SetAPassword> {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  String inputText = '';
  List<bool> activeContainers = [false, false, false, false];

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
                'Enter Your Pin',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: activeContainers[index] ? AppColors.buttonColor : AppColors.containerForImage.withOpacity(0.5),
                  ),
                );
              }),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            SizedBox(
              width: width * 1,
              height: height * 0.6,
              child: GridView.builder(
                itemCount: 12,
                physics: const NeverScrollableScrollPhysics(),
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
                            onPressed: () {
                              if (index == 11) {
                                if (inputText.isNotEmpty) {
                                  inputText = inputText.substring(0, inputText.length - 1);
                                  for (int i = 0; i <= inputText.length; i++) {
                                    activeContainers[inputText.length] = false;
                                    setState(() {});
                                  }
                                  print(inputText);
                                  print(activeContainers);
                                }
                              } else {
                                if (inputText.length < 4) {
                                  inputText = inputText + numbers[index == 10 ? index - 1 : index].toString();
                                  for (int i = 0; i < inputText.length; i++) {
                                    activeContainers[i] = true;
                                    setState(() {});
                                  }
                                  print(inputText);
                                  print(activeContainers);
                                }
                              }
                            },
                            color: AppColors.primaryColor,
                            minWidth: 60,
                            height: 60,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                            child: index == 11
                                ? const Icon(
                                    Icons.backspace_outlined,
                                    color: AppColors.scaffoldColor,
                                  )
                                : Text(
                                    "${numbers[index == 10 ? index - 1 : index]}",
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
