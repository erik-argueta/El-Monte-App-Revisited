import 'package:flutter/material.dart';

import '../data/city_links.dart';

class ResourceLinkCard extends StatelessWidget {
  const ResourceLinkCard({
    required this.link,
    required this.onTap,
    this.showDescription = false,
    this.actionLabel,
    super.key,
  });

  final CityLink link;
  final VoidCallback onTap;
  final bool showDescription;
  final String? actionLabel;

  @override
  Widget build(BuildContext context) {
    final action = actionLabel;

    return Card(
      margin: EdgeInsets.zero,
      color: Colors.white,
      elevation: 2,
      shadowColor: Colors.black.withValues(alpha: 0.20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ResourceIcon(icon: link.icon),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      link.label,
                      style: const TextStyle(
                        fontSize: 17,
                        height: 1.1,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111617),
                      ),
                    ),
                    if (showDescription && link.description.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        link.description,
                        style: const TextStyle(
                          fontSize: 13,
                          height: 1.22,
                          color: Color(0xFF2F383A),
                        ),
                      ),
                    ],
                    if (action != null) ...[
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 130,
                        height: 32,
                        child: FilledButton(
                          onPressed: onTap,
                          style: FilledButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: const Color(0xFF103F49),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            action,
                            style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (action == null) ...[
                const SizedBox(width: 4),
                const Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: Icon(
                    Icons.chevron_right_rounded,
                    color: Color(0xFF879092),
                    size: 28,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _ResourceIcon extends StatelessWidget {
  const _ResourceIcon({required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: const BoxDecoration(
        color: Color(0xFFE3F0EF),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 30, color: const Color(0xFF246872)),
    );
  }
}
