import 'package:flutter/material.dart';

import '../../data/city_links.dart';
import '../../utils/external_link.dart';
import '../../widgets/city_page_header.dart';

class CommunityEventsPage extends StatelessWidget {
  const CommunityEventsPage({super.key});

  static const _flyerAssets = <String>[
    'lib/assets/ig-fliers/summer-brochure.jpg',
    'lib/assets/ig-fliers/citizenship-help.jpg',
    'lib/assets/ig-fliers/back-to-school.jpg',
    'lib/assets/ig-fliers/splash.jpg',
    'lib/assets/ig-fliers/wellness-project.jpg',
    'lib/assets/ig-fliers/cooling.jpg',
    'lib/assets/ig-fliers/summer-brochure.jpg',
    'lib/assets/ig-fliers/citizenship-help.jpg',
    'lib/assets/ig-fliers/back-to-school.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CityPageHeader(title: 'Community Events'),
          Expanded(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFF3FAF9), Color(0xFFE5F3F2)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 540),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Follow Us for Updates',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF15383E),
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.3,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: _SocialButton(
                                key: const ValueKey(
                                  'community-events-instagram',
                                ),
                                label: CityLinks.instagram.label,
                                icon: const _InstagramMark(),
                                onTap: () => openCityLink(
                                  context,
                                  CityLinks.instagram.url,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _SocialButton(
                                key: const ValueKey(
                                  'community-events-facebook',
                                ),
                                label: CityLinks.facebook.label,
                                icon: const Icon(
                                  Icons.facebook,
                                  color: Color(0xFF1877F2),
                                  size: 34,
                                ),
                                onTap: () => openCityLink(
                                  context,
                                  CityLinks.facebook.url,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.only(bottom: 20),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 4,
                                crossAxisSpacing: 4,
                              ),
                          itemCount: _flyerAssets.length,
                          itemBuilder: (context, index) => _FlyerTile(
                            key: ValueKey('community-event-flyer-$index'),
                            assetPath: _flyerAssets[index],
                          ),
                        ),
                      ],
                    ),
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

class _FlyerTile extends StatelessWidget {
  const _FlyerTile({required this.assetPath, super.key});

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: Image.asset(
        assetPath,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        cacheWidth: 600,
        filterQuality: FilterQuality.medium,
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({
    required this.label,
    required this.icon,
    required this.onTap,
    super.key,
  });

  final String label;
  final Widget icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 3,
      shadowColor: Colors.black.withValues(alpha: 0.18),
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: 58,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF161A1B),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InstagramMark extends StatelessWidget {
  const _InstagramMark();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF833AB4),
            Color(0xFFC13584),
            Color(0xFFF77737),
            Color(0xFFFCAF45),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Icon(
        Icons.camera_alt_rounded,
        color: Colors.white,
        size: 23,
      ),
    );
  }
}
