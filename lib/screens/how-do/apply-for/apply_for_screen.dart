import 'package:flutter/material.dart';

import '../../../utils/external_link.dart';
import '../../../widgets/site_map_button.dart';
import '../how_do_section.dart';

class ApplyForPage extends StatelessWidget {
  const ApplyForPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HowDoSection(
      title: 'Apply For',
      buttons: [
        SiteMapButton(
          key: const ValueKey('site-map-385'),
          logo: const Icon(Icons.description_rounded),
          title: 'Alarm Permit Application (PDF)',
          description:
              'Open the official City of El Monte Alarm Permit Application (PDF) page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/385/Alarm-Permit-Application-PDF',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-383'),
          logo: const Icon(Icons.business_center_rounded),
          title: 'Business License Application (PDF)',
          description:
              'Open the official City of El Monte Business License Application (PDF) page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/383/Business-License-Application-PDF',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-135'),
          logo: const Icon(Icons.description_rounded),
          title: 'Employment Opportunities',
          description:
              'Open the official City of El Monte Employment Opportunities page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/135/Employment-Opportunities',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-384'),
          logo: const Icon(Icons.water_drop_rounded),
          title: 'New Water Service Application (PDF)',
          description:
              'Open the official City of El Monte New Water Service Application (PDF) page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/384/New-Water-Service-Application-PDF',
          ),
        ),
      ],
    );
  }
}
