import 'package:atheriq/widgets/seacrh_section.dart';
import 'package:atheriq/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        SideBar(),
        Expanded(
          child: Column(
            children: [
            
              Expanded(
                child: Container(
                  height: 20,
                  child: SeacrhSection(),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
