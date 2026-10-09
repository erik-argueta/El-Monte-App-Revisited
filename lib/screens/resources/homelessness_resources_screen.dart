import 'package:flutter/material.dart';

import '../../data/city_links.dart';
import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/site_map_button.dart';

class HomelessnessResourcesPage extends StatelessWidget {
  const HomelessnessResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const items = [
      (id: '254', link: CityLinks.homelessPrevention),
      (id: '473', link: CityLinks.winterShelter),
      (id: '259', link: CityLinks.helpfulResources),
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
                    itemCount: items.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return SiteMapButton(
                        key: ValueKey('site-map-${item.id}'),
                        logo: Icon(item.link.icon),
                        title: item.link.label,
                        description: item.link.description,
                        trailingIcon: Icons.open_in_new_rounded,
                        onTap: () => openCityLink(context, item.link.url),
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
