import 'package:flutter/material.dart';

class SiteMapButton extends StatelessWidget {
  const SiteMapButton({
    required this.logo,
    required this.title,
    required this.description,
    required this.trailingIcon,
    required this.onTap,
    super.key,
  });

  final Widget logo;
  final String title;
  final String description;
  final IconData trailingIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.white,
      elevation: 2,
      shadowColor: Colors.black.withValues(alpha: 0.18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 10, 12),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  color: Color(0xFFE3F0EF),
                  shape: BoxShape.circle,
                ),
                child: IconTheme.merge(
                  data: const IconThemeData(color: Color(0xFF246872), size: 28),
                  child: logo,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF111617),
                        fontSize: 16,
                        height: 1.15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    if (description.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: const TextStyle(
                          color: Color(0xFF4B575A),
                          fontSize: 13,
                          height: 1.25,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Icon(trailingIcon, color: const Color(0xFF7E898B), size: 25),
            ],
          ),
        ),
      ),
    );
  }
}
