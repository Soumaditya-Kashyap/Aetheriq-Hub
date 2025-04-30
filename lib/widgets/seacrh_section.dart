import 'package:atheriq/theme/colors.dart';
import 'package:atheriq/widgets/search_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeacrhSection extends StatelessWidget {
  const SeacrhSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Where knowledge meets creativity',
          style: GoogleFonts.ibmPlexMono(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            height: 1.2,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 32),
        Container(
          width: 700,
          decoration: BoxDecoration(
            color: AppColors.searchBar,
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Seach for anything...',
                  hintStyle: TextStyle(
                    color: AppColors.textGrey,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                ),
              ),
              Row(
                children: [
                  SearchBarButton(
                    icon: Icons.auto_awesome_outlined,
                    text: 'Focus',
                  ),
                  const SizedBox(width: 12),
                  SearchBarButton(
                    icon: Icons.add_circle_outline_outlined,
                    text: 'Attach',
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.submitButton,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: AppColors.background,
                      size: 16,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
