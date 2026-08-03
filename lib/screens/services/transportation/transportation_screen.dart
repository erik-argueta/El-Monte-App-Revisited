import 'package:flutter/material.dart';

import '../../../utils/external_link.dart';
import '../../../widgets/city_page_header.dart';
import '../../../widgets/site_map_button.dart';

class TransportationPage extends StatelessWidget {
  const TransportationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = [
      SiteMapButton(
        key: const ValueKey('site-map-399'),
        logo: const Icon(Icons.directions_bus_rounded),
        title: 'Shuttles',
        description:
            'Open the official City of El Monte Shuttles page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () =>
            openCityLink(context, 'https://www.ci.el-monte.ca.us/399/Shuttles'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-400'),
        logo: const Icon(Icons.directions_bus_rounded),
        title: 'Trolleys',
        description:
            'Open the official City of El Monte Trolleys page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () =>
            openCityLink(context, 'https://www.ci.el-monte.ca.us/400/Trolleys'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-641'),
        logo: const Icon(Icons.description_rounded),
        title: 'Title VI',
        description:
            'Open the official City of El Monte Title VI page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () =>
            openCityLink(context, 'https://www.ci.el-monte.ca.us/641/Title-VI'),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Transportation'),
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
                        return const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          child: Text(
                            'Choose a Transportation topic to continue.',
                            style: TextStyle(
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
