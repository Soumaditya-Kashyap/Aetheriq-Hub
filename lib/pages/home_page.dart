import 'package:atheriq/services/chat_web_service.dart';
import 'package:atheriq/theme/colors.dart';
import 'package:atheriq/widgets/footer_button.dart';
import 'package:atheriq/widgets/seacrh_section.dart';
import 'package:atheriq/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String fullResponse = "";
  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

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
              StreamBuilder(
                stream: ChatWebService().contentStream,
                builder: (contex, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  fullResponse += snapshot.data?['data'] ?? "";
                  return Text(fullResponse);
                },
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
