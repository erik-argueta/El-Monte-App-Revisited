import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/city_links.dart';
import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/site_map_button.dart';

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      (
        id: '153',
        link: CityLinks.cityClerk,
        description:
            "Open the official City of El Monte City Clerk's Office page in your browser.",
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(context, CityLinks.cityClerk.url),
      ),
      (
        id: '150',
        link: CityLinks.cityManager,
        description:
            "Open the official City of El Monte City Manager's Office page in your browser.",
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(context, CityLinks.cityManager.url),
      ),
      (
        id: '240',
        link: CityLinks.housingResources,
        description: 'Browse housing information and assistance resources.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/resources/housing'),
      ),
      (
        id: '246',
        link: CityLinks.federalGrantPrograms,
        description: CityLinks.federalGrantPrograms.description,
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(context, CityLinks.federalGrantPrograms.url),
      ),
      (
        id: '130',
        link: CityLinks.alerts,
        description:
            'Open the official City of El Monte Alerts page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
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
                itemBuilder: (context, index) {
                  final item = items[index];
                  return SiteMapButton(
                    key: ValueKey('site-map-${item.id}'),
                    logo: Icon(item.link.icon),
                    title: item.link.label,
                    description: item.description,
                    trailingIcon: item.trailingIcon,
                    onTap: item.onTap,
                  );
                },
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
