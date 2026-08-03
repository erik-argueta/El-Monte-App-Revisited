import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/external_link.dart';
import '../../../widgets/city_page_header.dart';
import '../../../widgets/site_map_button.dart';

class DepartmentsPage extends StatelessWidget {
  const DepartmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = [
      SiteMapButton(
        key: const ValueKey('site-map-153'),
        logo: const Icon(Icons.description_rounded),
        title: "City Clerk's Office",
        description: "Browse 13 related topics for City Clerk's Office.",
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/directory/153'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-150'),
        logo: const Icon(Icons.description_rounded),
        title: "City Manager's Office",
        description: "Browse 4 related topics for City Manager's Office.",
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/directory/150'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-373'),
        logo: const Icon(Icons.description_rounded),
        title: 'City Treasurer',
        description:
            'Open the official City of El Monte City Treasurer page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/373/City-Treasurer',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-213'),
        logo: const Icon(Icons.business_center_rounded),
        title: 'Economic Development',
        description: 'Browse 11 related topics for Economic Development.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/directory/213'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-333'),
        logo: const Icon(Icons.health_and_safety_rounded),
        title: 'Emergency Services',
        description:
            'Open the official City of El Monte Emergency Services page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/333/Emergency-Services',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-350'),
        logo: const Icon(Icons.payments_rounded),
        title: 'Finance',
        description: 'Browse 5 related topics for Finance.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/directory/350'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-371'),
        logo: const Icon(Icons.health_and_safety_rounded),
        title: 'Fire Department',
        description: 'Browse 1 related topic for Fire Department.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/directory/371'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-159'),
        logo: const Icon(Icons.park_rounded),
        title: 'Recreation',
        description: 'Browse 4 related topics for Recreation.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/directory/159'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-209'),
        logo: const Icon(Icons.health_and_safety_rounded),
        title: 'Police',
        description: 'Browse 16 related topics for Police.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/directory/209'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-291'),
        logo: const Icon(Icons.description_rounded),
        title: 'Public Works',
        description: 'Browse 9 related topics for Public Works.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/directory/291'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-325'),
        logo: const Icon(Icons.water_drop_rounded),
        title: 'Water Department',
        description: 'Browse 5 related topics for Water Department.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/directory/325'),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Departments'),
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
                            'Choose a Departments topic to continue.',
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
