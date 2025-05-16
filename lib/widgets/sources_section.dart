import 'package:flutter/material.dart';

class SourcesSection extends StatefulWidget {
  const SourcesSection({super.key});

  @override
  State<SourcesSection> createState() => _SourcesSectionState();
}

class _SourcesSectionState extends State<SourcesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.source),
        SizedBox(width: 8,),

        Text(
          "Sources",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
