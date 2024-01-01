import 'package:flutter/material.dart';
import 'package:todo_app/src/utils/custom_button.dart';

class CustomDialog extends StatelessWidget {
  CustomDialog(
      {super.key,
      required this.title,
      required this.description,
      required this.buttonText1,
      required this.buttonText2,
      required this.buttonColor1,
      required this.buttonColor2,
      required this.onPressed1,
      required this.onPressed2});

  final String title;
  final String description;

  final String buttonText1;
  final Color buttonColor1;

  final String buttonText2;
  final Color buttonColor2;

  Function onPressed1;
  Function onPressed2;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Dialog(
      elevation: 5,
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        width: width * 0.9,
        height: height * 0.3,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(buttonText: buttonText1, buttonColor: buttonColor1, widthOfButton: 0.36, onPressed: onPressed1),
                  CustomButton(buttonText: buttonText2, buttonColor: buttonColor2, widthOfButton: 0.36, onPressed: onPressed2)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
