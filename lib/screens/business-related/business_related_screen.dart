import 'package:flutter/material.dart';

import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/site_map_button.dart';

class BusinessRelatedPage extends StatelessWidget {
  const BusinessRelatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = [
      SiteMapButton(
        key: const ValueKey('site-map-397'),
        logo: const Icon(Icons.description_rounded),
        title: 'Alarm Program',
        description:
            'Open the official City of El Monte Alarm Program page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/397/Alarm-Program',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-140'),
        logo: const Icon(Icons.description_rounded),
        title: 'Bid Opportunities',
        description:
            'Open the official City of El Monte Bid Opportunities page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/140/Bid-Opportunities',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-141'),
        logo: const Icon(Icons.business_center_rounded),
        title: 'Business Directory',
        description:
            'Open the official City of El Monte Business Directory page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/141/Business-Directory',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-407'),
        logo: const Icon(Icons.business_center_rounded),
        title: 'Business License',
        description:
            'Open the official City of El Monte Business License page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/407/Business-License',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-412'),
        logo: const Icon(Icons.description_rounded),
        title: 'Building Division',
        description:
            'Open the official City of El Monte Building Division page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/412/Building-Division',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-401'),
        logo: const Icon(Icons.description_rounded),
        title: 'Building Permits',
        description:
            'Open the official City of El Monte Building Permits page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/401/Building-Permits',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-414'),
        logo: const Icon(Icons.business_center_rounded),
        title: 'Economic Development',
        description:
            'Open the official City of El Monte Economic Development page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/414/Economic-Development',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-415'),
        logo: const Icon(Icons.description_rounded),
        title: 'Purchasing',
        description:
            'Open the official City of El Monte Purchasing page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/415/Purchasing',
        ),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Business'),
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
                            'Choose a Business topic to continue.',
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
