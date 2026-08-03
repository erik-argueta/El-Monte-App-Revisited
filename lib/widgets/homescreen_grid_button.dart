import 'package:flutter/material.dart';

class HomeGridButton extends StatelessWidget {
  const HomeGridButton({
    required this.logo,
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  final Widget logo;
  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.white,
      elevation: 3,
      shadowColor: Colors.black.withValues(alpha: 0.20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconTheme.merge(
                data: const IconThemeData(size: 52, color: Color(0xFF1C6570)),
                child: logo,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  color: Color(0xFF111617),
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  height: 1.12,
                ),
              ),
              if (description.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF2F383A),
                    fontSize: 13,
                    height: 1.18,
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
