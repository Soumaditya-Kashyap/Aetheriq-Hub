import 'package:atheriq/theme/colors.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      color: AppColors.sideNav,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: 32,
          ),
          const SizedBox(height: 24),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.add,
              color: AppColors.iconGrey,
              size: 22,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.search,
              color: AppColors.iconGrey,
              size: 32,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.language,
              color: AppColors.iconGrey,
              size: 32,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.auto_awesome,
              color: AppColors.iconGrey,
              size: 32,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.cloud_outlined,
              color: AppColors.iconGrey,
              size: 32,
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Icon(
              Icons.keyboard_arrow_right,
              color: AppColors.iconGrey,
              size: 32,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
