import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';
import '../../widgets/site_map_button.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = [
      SiteMapButton(
        key: const ValueKey('site-map-130'),
        logo: const Icon(Icons.description_rounded),
        title: 'Alerts',
        description:
            'Open the official City of El Monte Alerts page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () =>
            openCityLink(context, 'https://www.ci.el-monte.ca.us/130/Alerts'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-421'),
        logo: const Icon(Icons.handyman_rounded),
        title: 'E-Services (ELMO)',
        description:
            'Open the official City of El Monte E-Services (ELMO) page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/421/E---Services-ELMO',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-404'),
        logo: const Icon(Icons.home_work_rounded),
        title: 'Fair Housing Assistance',
        description:
            'Open the official City of El Monte Fair Housing Assistance page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/404/Fair-Housing-Assistance',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-402'),
        logo: const Icon(Icons.description_rounded),
        title: 'Garbage Collection',
        description:
            'Open the official City of El Monte Garbage Collection page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/402/Garbage-Collection',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-410'),
        logo: const Icon(Icons.description_rounded),
        title: 'Health & Wellness Programs',
        description:
            'Open the official City of El Monte Health & Wellness Programs page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/410/Health-Wellness-Programs',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-403'),
        logo: const Icon(Icons.home_work_rounded),
        title: 'Homeless Prevention Program',
        description:
            'Open the official City of El Monte Homeless Prevention Program page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/403/Homeless-Prevention-Program',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-419'),
        logo: const Icon(Icons.description_rounded),
        title: 'Looking For Information?',
        description:
            'Open the official City of El Monte Looking For Information? page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/419/Looking-For-Information',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-411'),
        logo: const Icon(Icons.description_rounded),
        title: 'Meals for Seniors',
        description:
            'Open the official City of El Monte Meals for Seniors page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/411/Meals-for-Seniors',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-408'),
        logo: const Icon(Icons.payments_rounded),
        title: 'Payments',
        description:
            'Open the official City of El Monte Payments page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () =>
            openCityLink(context, 'https://www.ci.el-monte.ca.us/408/Payments'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-416'),
        logo: const Icon(Icons.payments_rounded),
        title: 'Pay Water Bill Online',
        description:
            'Open the official City of El Monte Pay Water Bill Online page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/416/Pay-Water-Bill-Online',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-406'),
        logo: const Icon(Icons.description_rounded),
        title: 'Recycling',
        description:
            'Open the official City of El Monte Recycling page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/406/Recycling',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-139'),
        logo: const Icon(Icons.description_rounded),
        title: 'Report a Concern',
        description:
            'Open the official City of El Monte Report a Concern page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/139/Report-a-Concern',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-409'),
        logo: const Icon(Icons.handyman_rounded),
        title: 'Social Services',
        description:
            'Open the official City of El Monte Social Services page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/409/Social-Services',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-398'),
        logo: const Icon(Icons.directions_bus_rounded),
        title: 'Transportation',
        description: 'Browse 3 related topics for Transportation.',
        trailingIcon: Icons.chevron_right_rounded,
        onTap: () => context.push('/services/transportation'),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-405'),
        logo: const Icon(Icons.water_drop_rounded),
        title: 'Water Service Requests',
        description:
            'Open the official City of El Monte Water Service Requests page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/405/Water-Service-Requests',
        ),
      ),
      SiteMapButton(
        key: const ValueKey('site-map-735'),
        logo: const Icon(Icons.calendar_month_rounded),
        title: 'City Events',
        description:
            'Open the official City of El Monte City Events page in your browser.',
        trailingIcon: Icons.open_in_new_rounded,
        onTap: () => openCityLink(
          context,
          'https://www.ci.el-monte.ca.us/735/City-Events',
        ),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Services'),
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
                            'Choose a Services topic to continue.',
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
