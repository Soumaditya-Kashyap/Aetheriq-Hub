import 'package:atheriq/theme/colors.dart';
import 'package:flutter/material.dart';

class SearchBarButton extends StatefulWidget {
  final IconData icon;
  final String text;
  const SearchBarButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  State<SearchBarButton> createState() => _SearchBarButtonState();
}

class _SearchBarButtonState extends State<SearchBarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: AppColors.iconGrey,
            size: 20,
          ),
          const SizedBox(width: 10),
          Text(
            widget.text,
            style: TextStyle(color: AppColors.textGrey),
          )
        ],
      ),
    );
  }
}
