import 'package:flutter/material.dart';

import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/site_map_button.dart';

class ForResidentsPage extends StatelessWidget {
  const ForResidentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = [
      SiteMapButton(
        key: const ValueKey('site-map-334'),
        logo: const Icon(Icons.description_rounded),
        title: 'About El Monte',
        description:
            'Open the official City of El Monte About El Monte page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/334/About-El-Monte',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-387'),
        logo: const Icon(Icons.pets_rounded),
        title: 'Animal Control',
        description:
            'Open the official City of El Monte Animal Control page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/387/Animal-Control',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-340'),
        logo: const Icon(Icons.description_rounded),
        title: '2011 General Plan (PDF)',
        description:
            'Open the official City of El Monte 2011 General Plan (PDF) page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/340/2011-General-Plan-PDF',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-656'),
        logo: const Icon(Icons.description_rounded),
        title: 'Broadband',
        description:
            'Open the official City of El Monte Broadband page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/656/Broadband',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-341'),
        logo: const Icon(Icons.description_rounded),
        title: 'Centennial Celebration',
        description:
            'Open the official City of El Monte Centennial Celebration page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/341/Centennial-Celebration',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-132'),
        logo: const Icon(Icons.calendar_month_rounded),
        title: 'Community Events',
        description:
            'Open the official City of El Monte Community Events page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/132/Community-Events',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-663'),
        logo: const Icon(Icons.account_balance_rounded),
        title: 'City Council Election Districting',
        description:
            'Open the official City of El Monte City Council Election Districting page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/663/City-Council-Election-Districting',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-619'),
        logo: const Icon(Icons.description_rounded),
        title: 'El Monte Census 2020',
        description:
            'Open the official City of El Monte El Monte Census 2020 page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/619/El-Monte-Census-2020',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-133'),
        logo: const Icon(Icons.description_rounded),
        title: 'Community News',
        description:
            'Open the official City of El Monte Community News page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/133/Community-News',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-650'),
        logo: const Icon(Icons.description_rounded),
        title: 'El Monte Farmers Market',
        description:
            'Open the official City of El Monte El Monte Farmers Market page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/650/El-Monte-Farmers-Market',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-336'),
        logo: const Icon(Icons.description_rounded),
        title: 'El Monte Historical Museum',
        description:
            'Open the official City of El Monte El Monte Historical Museum page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/336/El-Monte-Historical-Museum',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-418'),
        logo: const Icon(Icons.description_rounded),
        title: 'Employment Opportunities',
        description:
            'Open the official City of El Monte Employment Opportunities page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/418/Employment-Opportunities',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-391'),
        logo: const Icon(Icons.description_rounded),
        title: 'Health & Wellness Programs',
        description:
            'Open the official City of El Monte Health & Wellness Programs page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/391/Health-Wellness-Programs',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-388'),
        logo: const Icon(Icons.home_work_rounded),
        title: 'Housing Information',
        description:
            'Open the official City of El Monte Housing Information page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/388/Housing-Information',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-337'),
        logo: const Icon(Icons.description_rounded),
        title: 'Maps & Directions',
        description:
            'Open the official City of El Monte Maps & Directions page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/337/Maps-Directions',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-417'),
        logo: const Icon(Icons.description_rounded),
        title: 'Municipal Code Book',
        description:
            'Open the official City of El Monte Municipal Code Book page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/417/Municipal-Code-Book',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-389'),
        logo: const Icon(Icons.handyman_rounded),
        title: 'Neighborhood Services',
        description:
            'Open the official City of El Monte Neighborhood Services page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/389/Neighborhood-Services',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-138'),
        logo: const Icon(Icons.park_rounded),
        title: 'Parks & Facilities',
        description:
            'Open the official City of El Monte Parks & Facilities page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/138/Parks-Facilities',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-423'),
        logo: const Icon(Icons.description_rounded),
        title: 'School Districts & Colleges',
        description:
            'Open the official City of El Monte School Districts & Colleges page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/423/School-Districts-Colleges',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-335'),
        logo: const Icon(Icons.description_rounded),
        title: 'Sharing the Heritage (PDF)',
        description:
            'Open the official City of El Monte Sharing the Heritage (PDF) page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/335/Sharing-the-Heritage-PDF',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-390'),
        logo: const Icon(Icons.handyman_rounded),
        title: 'Social Services',
        description:
            'Open the official City of El Monte Social Services page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/390/Social-Services',
        ),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Residents'),
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
                            'Choose a Residents topic to continue.',
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
