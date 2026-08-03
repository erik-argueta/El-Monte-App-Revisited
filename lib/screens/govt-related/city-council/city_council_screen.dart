import 'package:flutter/material.dart';

import '../../../utils/external_link.dart';
import '../../../widgets/city_page_header.dart';
import '../../../widgets/site_map_button.dart';

class CityCouncilPage extends StatelessWidget {
  const CityCouncilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = [
      SiteMapButton(
        key: const ValueKey('site-map-599'),
        logo: const Icon(Icons.description_rounded),
        title: 'Jessica Ancona',
        description:
            'Open the official City of El Monte Jessica Ancona page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/599/Jessica-Ancona',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-642'),
        logo: const Icon(Icons.description_rounded),
        title: 'Viviana Longoria',
        description:
            'Open the official City of El Monte Viviana Longoria page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/642/Viviana-Longoria',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-685'),
        logo: const Icon(Icons.description_rounded),
        title: 'Marisol Cortez',
        description:
            'Open the official City of El Monte Marisol Cortez page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/685/Marisol-Cortez',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-687'),
        logo: const Icon(Icons.description_rounded),
        title: 'Sheila Crippen-Thomas',
        description:
            'Open the official City of El Monte Sheila Crippen-Thomas page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/687/Sheila-Crippen-Thomas',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-348'),
        logo: const Icon(Icons.description_rounded),
        title: 'Cindy Galvan',
        description:
            'Open the official City of El Monte Cindy Galvan page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/348/Cindy-Galvan',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-643'),
        logo: const Icon(Icons.description_rounded),
        title: 'Martin Herrera',
        description:
            'Open the official City of El Monte Martin Herrera page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/643/Martin-Herrera',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-686'),
        logo: const Icon(Icons.description_rounded),
        title: 'Dr. Julia Ruedas',
        description:
            'Open the official City of El Monte Dr. Julia Ruedas page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/686/Dr-Julia-Ruedas',
        ),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'City Council'),
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
                            'Choose a City Council topic to continue.',
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
