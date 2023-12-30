import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/src/utils/app_color.dart';
import 'package:todo_app/src/utils/my_go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: const TextTheme(
          labelLarge: TextStyle(color: AppColors.textColorPrimary, fontSize: 20, fontWeight: FontWeight.w700, letterSpacing: 1.5),
          labelMedium: TextStyle(color: AppColors.textColorPrimary, fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 1.5),
          labelSmall: TextStyle(color: AppColors.textColorSecondary, fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 1.5),
          titleMedium: TextStyle(color: AppColors.textColorPrimary, fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 1.5),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: MyGoRouter().router,
    );
  }
}
