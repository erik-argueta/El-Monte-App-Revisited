import 'package:flutter/material.dart';

import '../../../utils/external_link.dart';
import '../../../widgets/site_map_button.dart';
import '../how_do_section.dart';

class FindPage extends StatelessWidget {
  const FindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HowDoSection(
      title: 'Find',
      buttons: [
        SiteMapButton(
          key: const ValueKey('site-map-377'),
          logo: const Icon(Icons.description_rounded),
          title: 'Car Dealerships',
          description:
              'Open the official City of El Monte Car Dealerships page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/377/Car-Dealerships',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-369'),
          logo: const Icon(Icons.health_and_safety_rounded),
          title: 'Emergency Preparedness',
          description:
              'Open the official City of El Monte Emergency Preparedness page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/369/Emergency-Preparedness',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-361'),
          logo: const Icon(Icons.description_rounded),
          title: 'Facilities',
          description:
              'Open the official City of El Monte Facilities page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/361/Facilities',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-362'),
          logo: const Icon(Icons.description_rounded),
          title: 'Museum',
          description:
              'Open the official City of El Monte Museum page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () =>
              openCityLink(context, 'https://www.ci.el-monte.ca.us/362/Museum'),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-376'),
          logo: const Icon(Icons.description_rounded),
          title: 'Restaurants',
          description:
              'Open the official City of El Monte Restaurants page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/376/Restaurants',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-370'),
          logo: const Icon(Icons.directions_bus_rounded),
          title: 'Transportation',
          description:
              'Open the official City of El Monte Transportation page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/370/Transportation',
          ),
        ),
      ],
    );
  }
}
