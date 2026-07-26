import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/city_links.dart';
import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/resource_link_card.dart';

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      (
        link: CityLinks.cityClerk,
        onTap: () => openCityLink(context, CityLinks.cityClerk.url),
      ),
      (
        link: CityLinks.cityManager,
        onTap: () => openCityLink(context, CityLinks.cityManager.url),
      ),
      (
        link: CityLinks.housingResources,
        onTap: () => context.push('/resources/housing'),
      ),
      (
        link: CityLinks.federalGrantPrograms,
        onTap: () => openCityLink(context, CityLinks.federalGrantPrograms.url),
      ),
      (
        link: CityLinks.alerts,
        onTap: () => openCityLink(context, CityLinks.alerts.url),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Resources'),
          Expanded(
            child: _ResourceBackground(
              child: ListView.separated(
                padding: const EdgeInsets.all(14),
                itemCount: items.length,
                separatorBuilder: (_, _) => const SizedBox(height: 12),
                itemBuilder: (context, index) => ResourceLinkCard(
                  link: items[index].link,
                  onTap: items[index].onTap,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ResourceBackground extends StatelessWidget {
  const _ResourceBackground({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
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
          child: child,
        ),
      ),
    );
  }
}
