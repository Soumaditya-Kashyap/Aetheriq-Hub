import 'package:atheriq/theme/colors.dart';
import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  final String text;
  const FooterButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: AppColors.footerGrey,
        ),
      ),
    );
  }
}
