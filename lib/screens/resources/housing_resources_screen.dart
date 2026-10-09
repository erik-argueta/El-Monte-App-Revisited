import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/city_links.dart';
import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/site_map_button.dart';

class HousingResourcesPage extends StatelessWidget {
  const HousingResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Housing Resources'),
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
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: ListView(
                    padding: const EdgeInsets.all(14),
                    children: [
                      SiteMapButton(
                        key: const ValueKey('site-map-388'),
                        logo: const Icon(Icons.apartment_rounded),
                        title: CityLinks.housingInformation.label,
                        description: CityLinks.housingInformation.description,
                        trailingIcon: Icons.open_in_new_rounded,
                        onTap: () => openCityLink(
                          context,
                          CityLinks.housingInformation.url,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SiteMapButton(
                        key: const ValueKey('site-map-246'),
                        logo: const Icon(Icons.receipt_long_rounded),
                        title: CityLinks.federalGrantPrograms.label,
                        description: CityLinks.federalGrantPrograms.description,
                        trailingIcon: Icons.open_in_new_rounded,
                        onTap: () => openCityLink(
                          context,
                          CityLinks.federalGrantPrograms.url,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SiteMapButton(
                        key: const ValueKey('site-map-546'),
                        logo: const Icon(Icons.volunteer_activism_rounded),
                        title: CityLinks.homelessness.label,
                        description: CityLinks.homelessness.description,
                        trailingIcon: Icons.chevron_right_rounded,
                        onTap: () =>
                            context.push('/resources/housing/homelessness'),
                      ),
                    ],
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
