
import 'package:atheriq/pages/home_page.dart';
import 'package:atheriq/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background,
          textTheme: GoogleFonts.interTextTheme(
            ThemeData.dark().textTheme.copyWith(
                  bodyMedium: const TextStyle(
                    fontSize: 15,
                    color: AppColors.whiteColor,
                  ),
                ),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.submitButton)),
      home: const HomePage(),
    );
  }
}
