import 'package:flutter/material.dart';

import '../../../utils/external_link.dart';
import '../../../widgets/city_page_header.dart';
import '../../../widgets/site_map_button.dart';

class BoardsAndCommissionsPage extends StatelessWidget {
  const BoardsAndCommissionsPage({super.key});

  static const _artsAdvisoryCommitteeUrl =
      'https://www.ci.el-monte.ca.us/174/Arts-In-Public-Places-Advisory-Committee';
  static const _communityServicesCommissionUrl =
      'https://www.ci.el-monte.ca.us/164/Community-Services-Commission';
  static const _zoningReviewCommitteeUrl =
      'https://www.ci.el-monte.ca.us/276/Zoning-Review-Committee';
  static const _planningCommissionUrl =
      'https://www.ci.el-monte.ca.us/170/Planning-Commission';
  static const _permitCommitteeUrl =
      'https://www.ci.el-monte.ca.us/420/Permit-Committee';

  @override
  Widget build(BuildContext context) {
    final buttons = [
      SiteMapButton(
        key: const ValueKey('site-map-174'),
        logo: const Icon(Icons.description_rounded),
        title: 'Arts In Public Places Advisory Committee',
        description:
            'Open the official City of El Monte Arts In Public Places Advisory Committee page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(context, _artsAdvisoryCommitteeUrl),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-164'),
        logo: const Icon(Icons.account_balance_rounded),
        title: 'Community Services Commission',
        description:
            'Open the official City of El Monte Community Services Commission page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(context, _communityServicesCommissionUrl),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-276'),
        logo: const Icon(Icons.description_rounded),
        title: 'Zoning Review Committee',
        description:
            'Open the official City of El Monte Zoning Review Committee page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(context, _zoningReviewCommitteeUrl),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-170'),
        logo: const Icon(Icons.account_balance_rounded),
        title: 'Planning Commission',
        description:
            'Open the official City of El Monte Planning Commission page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(context, _planningCommissionUrl),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-420'),
        logo: const Icon(Icons.description_rounded),
        title: 'Permit Committee',
        description:
            'Open the official City of El Monte Permit Committee page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(context, _permitCommitteeUrl),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Boards & Commissions'),
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
                            'Choose a Boards & Commissions topic to continue.',
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
