import 'package:flutter/material.dart';

import '../../../utils/external_link.dart';
import '../../../widgets/site_map_button.dart';
import '../how_do_section.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HowDoSection(
      title: 'Pay',
      buttons: [
        SiteMapButton(
          key: const ValueKey('site-map-381'),
          logo: const Icon(Icons.description_rounded),
          title: 'Administrative Citations',
          description:
              'Open the official City of El Monte Administrative Citations page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/381/Administrative-Citations',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-382'),
          logo: const Icon(Icons.business_center_rounded),
          title: 'Business License',
          description:
              'Open the official City of El Monte Business License page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/382/Business-License',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-380'),
          logo: const Icon(Icons.description_rounded),
          title: 'Parking Tickets',
          description:
              'Open the official City of El Monte Parking Tickets page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/380/Parking-Tickets',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-446'),
          logo: const Icon(Icons.water_drop_rounded),
          title: 'Water Bill',
          description:
              'Open the official City of El Monte Water Bill page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/446/Water-Bill',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-548'),
          logo: const Icon(Icons.payments_rounded),
          title: 'Alarm Permit Online Payment',
          description:
              'Open the official City of El Monte Alarm Permit Online Payment page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/548/Alarm-Permit-Online-Payment',
          ),
        ),
        SiteMapButton(
          key: const ValueKey('site-map-566'),
          logo: const Icon(Icons.description_rounded),
          title: 'Accounts Receivable Invoice',
          description:
              'Open the official City of El Monte Accounts Receivable Invoice page in your browser.',
          trailingIcon: Icons.open_in_new_rounded,
          onTap: () => openCityLink(
            context,
            'https://www.ci.el-monte.ca.us/566/Accounts-Receivable-Invoice',
          ),
        ),
      ],
    );
  }
}
