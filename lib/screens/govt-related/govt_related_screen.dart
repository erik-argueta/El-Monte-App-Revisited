import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/site_map_button.dart';

class GovtRelatedPage extends StatelessWidget {
  const GovtRelatedPage({super.key});

  static const _agendasUrl =
      'https://www.ci.el-monte.ca.us/129/Agendas-Minutes';
  static const _organizationChartUrl =
      'https://www.ci.el-monte.ca.us/386/Organization-Chart';

  @override
  Widget build(BuildContext context) {
    final buttons = [
      SiteMapButton(
        key: const ValueKey('site-map-129'),
        logo: const Icon(Icons.calendar_month_rounded),
        title: 'Agendas & Minutes',
        description:
            'Open the official City of El Monte Agendas & Minutes page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(context, _agendasUrl),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-163'),
        logo: const Icon(Icons.account_balance_rounded),
        title: 'Boards & Commissions',
        description: 'Browse 5 related topics for Boards & Commissions.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/govt-related/boards-and-commissions'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-342'),
        logo: const Icon(Icons.account_balance_rounded),
        title: 'City Council',
        description: 'Browse 7 related topics for City Council.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/govt-related/city-council'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-148'),
        logo: const Icon(Icons.description_rounded),
        title: 'Departments',
        description: 'Browse 11 related topics for Departments.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/govt-related/departments'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-386'),
        logo: const Icon(Icons.description_rounded),
        title: 'Organization Chart',
        description:
            'Open the official City of El Monte Organization Chart page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(context, _organizationChartUrl),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Government'),
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
                            'Choose a Government topic to continue.',
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
