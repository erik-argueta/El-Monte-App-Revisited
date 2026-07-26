import 'package:flutter/material.dart';

class HomeGridButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;
  final VoidCallback onTap; // a function with no return value, called on tap

  const HomeGridButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.iconColor = const Color(0xFF1C6570),
    super.key,
  });

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
              Icon(icon, size: 52, color: iconColor),
              const SizedBox(height: 10),
              Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  color: Color(0xFF111617),
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  height: 1.12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
