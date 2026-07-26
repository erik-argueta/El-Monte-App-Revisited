import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/city_links.dart';
import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/resource_link_card.dart';

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
                      ResourceLinkCard(
                        link: CityLinks.housingInformation,
                        showDescription: true,
                        onTap: () => openCityLink(
                          context,
                          CityLinks.housingInformation.url,
                        ),
                      ),
                      const SizedBox(height: 12),
                      ResourceLinkCard(
                        link: CityLinks.federalGrantPrograms,
                        showDescription: true,
                        onTap: () => openCityLink(
                          context,
                          CityLinks.federalGrantPrograms.url,
                        ),
                      ),
                      const SizedBox(height: 12),
                      ResourceLinkCard(
                        link: CityLinks.homelessness,
                        showDescription: true,
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
