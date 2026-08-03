import 'package:flutter/material.dart';

import '../../../utils/external_link.dart';
import '../../../widgets/site_map_button.dart';
import '../how_do_section.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HowDoSection(
      title: 'View',
      buttons: [
        SiteMapButton(
          key: const ValueKey('site-map-379'),
          logo: const Icon(Icons.calendar_month_rounded),
          title: 'Agendas',
          description:
              'Open the official City of El Monte Agendas page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/379/Agendas',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-378'),
          logo: const Icon(Icons.account_balance_rounded),
          title: 'Council Meeting Videos',
          description:
              'Open the official City of El Monte Council Meeting Videos page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/378/Council-Meeting-Videos',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-356'),
          logo: const Icon(Icons.calendar_month_rounded),
          title: 'Community Calendar',
          description:
              'Open the official City of El Monte Community Calendar page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/356/Community-Calendar',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-366'),
          logo: const Icon(Icons.description_rounded),
          title: 'El Monte School District',
          description:
              'Open the official City of El Monte El Monte School District page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/366/El-Monte-School-District',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-395'),
          logo: const Icon(Icons.payments_rounded),
          title: 'Finance & Tax Information',
          description:
              'Open the official City of El Monte Finance & Tax Information page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/395/Finance-Tax-Information',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-364'),
          logo: const Icon(Icons.description_rounded),
          title: 'News Gallery',
          description:
              'Open the official City of El Monte News Gallery page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/364/News-Gallery',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-393'),
          logo: const Icon(Icons.calendar_month_rounded),
          title: 'School & Commerce Calendars',
          description:
              'Open the official City of El Monte School & Commerce Calendars page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/393/School-Commerce-Calendars',
          ),
        ),
      ],
    );
  }
}
