import 'package:atheriq/theme/colors.dart';
import 'package:atheriq/widgets/footer_button.dart';
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
              ),
              //footer
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      FooterButton(text: "Atheriq Pro+"),
                      FooterButton(text: "Enterprise"),
                      FooterButton(text: "About"),
                      FooterButton(text: "Store"),
                      FooterButton(text: "Blog"),
                      FooterButton(text: "English(India)"),
                    ],
                  ))
            ],
          ),
        )
      ],
    ));
  }
}
