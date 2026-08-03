import 'package:flutter/material.dart';

import '../../../utils/external_link.dart';
import '../../../widgets/site_map_button.dart';
import '../how_do_section.dart';

class SubmitPage extends StatelessWidget {
  const SubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HowDoSection(
      title: 'Submit',
      buttons: [
        SiteMapButton(
          key: const ValueKey('site-map-359'),
          logo: const Icon(Icons.description_rounded),
          title: 'Building Inspection',
          description:
              'Open the official City of El Monte Building Inspection page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/359/Building-Inspection',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-358'),
          logo: const Icon(Icons.description_rounded),
          title: 'Facility Reservations',
          description:
              'Open the official City of El Monte Facility Reservations page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/358/Facility-Reservations',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-351'),
          logo: const Icon(Icons.description_rounded),
          title: 'Feedback',
          description:
              'Open the official City of El Monte Feedback page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/351/Feedback',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-352'),
          logo: const Icon(Icons.description_rounded),
          title: 'Incident Report',
          description:
              'Open the official City of El Monte Incident Report page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/352/Incident-Report',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-353'),
          logo: const Icon(Icons.description_rounded),
          title: 'Suggestions',
          description:
              'Open the official City of El Monte Suggestions page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/353/Suggestions',
          ),
        ),
      ],
    );
  }
}
