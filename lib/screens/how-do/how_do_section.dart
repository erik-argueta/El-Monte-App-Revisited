import 'package:flutter/material.dart';

import '../../widgets/city_page_header.dart';

class HowDoSection extends StatelessWidget {
  const HowDoSection({required this.title, required this.buttons, super.key});

  final String title;
  final List<Widget> buttons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CityPageHeader(title: title),
          Expanded(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFF3FAF9), Color(0xFFE3F2F1)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 680),
                  child: ListView.separated(
                    padding: const EdgeInsets.fromLTRB(14, 16, 14, 24),
                    itemCount: buttons.length + 1,
                    separatorBuilder: (_, index) =>
                        SizedBox(height: index == 0 ? 14 : 10),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Text(
                            'Choose a $title topic to continue.',
                            style: const TextStyle(
                              color: Color(0xFF415054),
                              fontSize: 14,
                              height: 1.35,
                            ),
                          ),
                        );
                      }

                      return buttons[index - 1];
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
