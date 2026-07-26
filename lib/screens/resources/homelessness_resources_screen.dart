import 'package:flutter/material.dart';

import '../../data/city_links.dart';
import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/resource_link_card.dart';

class HomelessnessResourcesPage extends StatelessWidget {
  const HomelessnessResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const links = [
      CityLinks.homelessPrevention,
      CityLinks.winterShelter,
      CityLinks.helpfulResources,
    ];

    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Homelessness Resources'),
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
                  child: ListView.separated(
                    padding: const EdgeInsets.all(14),
                    itemCount: links.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final link = links[index];
                      return ResourceLinkCard(
                        link: link,
                        showDescription: true,
                        actionLabel: 'GET HELP',
                        onTap: () => openCityLink(context, link.url),
                      );
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
