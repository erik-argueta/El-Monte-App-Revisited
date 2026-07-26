import 'package:flutter/material.dart';

class CityLink {
  const CityLink({
    required this.label,
    required this.url,
    required this.icon,
    this.description = '',
  });

  final String label;
  final String url;
  final IconData icon;
  final String description;
}

abstract final class CityLinks {
  static const home = CityLink(
    label: 'Home',
    url: 'https://www.ci.el-monte.ca.us/1/Home',
    icon: Icons.home_rounded,
  );
  static const government = CityLink(
    label: 'Government Related',
    url: 'https://www.ci.el-monte.ca.us/27/Government',
    icon: Icons.account_balance_rounded,
  );
  static const residents = CityLink(
    label: 'For Residents',
    url: 'https://www.ci.el-monte.ca.us/31/Residents',
    icon: Icons.home_work_rounded,
  );
  static const business = CityLink(
    label: 'Business Related',
    url: 'https://www.ci.el-monte.ca.us/35/Business',
    icon: Icons.business_center_rounded,
  );
  static const howDoI = CityLink(
    label: 'How Do I...',
    url: 'https://www.ci.el-monte.ca.us/9/How-Do-I',
    icon: Icons.help_rounded,
  );
  static const services = CityLink(
    label: 'Services',
    url: 'https://www.ci.el-monte.ca.us/101/Services',
    icon: Icons.handyman_rounded,
  );
  static const reportConcern = CityLink(
    label: 'Report a Concern',
    url: 'https://www.ci.el-monte.ca.us/139/Report-a-Concern',
    icon: Icons.edit_document,
  );
  static const alerts = CityLink(
    label: 'Alerts',
    url: 'https://www.ci.el-monte.ca.us/130/Alerts',
    icon: Icons.notifications_rounded,
  );
  static const cityClerk = CityLink(
    label: "City Clerk's Office",
    url: 'https://www.ci.el-monte.ca.us/153/City-Clerks-Office',
    icon: Icons.menu_book_rounded,
  );
  static const cityManager = CityLink(
    label: "City Manager's Office",
    url: 'https://www.ci.el-monte.ca.us/150/City-Managers-Office',
    icon: Icons.badge_rounded,
  );
  static const housingResources = CityLink(
    label: 'Housing Resources',
    url: 'https://www.ci.el-monte.ca.us/240/Housing-Resources',
    icon: Icons.house_rounded,
  );
  static const housingInformation = CityLink(
    label: 'Housing Information',
    url: 'https://www.ci.el-monte.ca.us/388/Housing-Information',
    icon: Icons.apartment_rounded,
    description:
        'Find housing information and programs available to El Monte residents.',
  );
  static const federalGrantPrograms = CityLink(
    label: 'Federal Grant Programs',
    url: 'https://www.ci.el-monte.ca.us/246/Federal-Grant-Programs',
    icon: Icons.receipt_long_rounded,
    description:
        'Explore federal grant programs that support housing and community needs.',
  );
  static const homelessness = CityLink(
    label: 'Homelessness',
    url: 'https://www.ci.el-monte.ca.us/546/Homelessness',
    icon: Icons.volunteer_activism_rounded,
    description:
        'Connect with homelessness prevention information and local support.',
  );
  static const homelessPrevention = CityLink(
    label: 'Homeless Prevention',
    url: 'https://www.ci.el-monte.ca.us/254/Homeless-Prevention',
    icon: Icons.roofing_rounded,
    description:
        'Get support with prevention, housing stability, and available services.',
  );
  static const winterShelter = CityLink(
    label: 'Winter Shelter',
    url: 'https://www.ci.el-monte.ca.us/473/Winter-Shelter',
    icon: Icons.cottage_rounded,
    description:
        'Find winter shelter information and seasonal services for people in need.',
  );
  static const helpfulResources = CityLink(
    label: 'Helpful Resources',
    url: 'https://www.ci.el-monte.ca.us/259/Helpful-Resources',
    icon: Icons.maps_home_work_rounded,
    description:
        'Browse related housing assistance and community resource information.',
  );

  static const searchable = <CityLink>[
    government,
    residents,
    business,
    howDoI,
    services,
    reportConcern,
    alerts,
    cityClerk,
    cityManager,
    housingResources,
    housingInformation,
    federalGrantPrograms,
    homelessness,
    homelessPrevention,
    winterShelter,
    helpfulResources,
  ];
}
