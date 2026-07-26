import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openCityLink(BuildContext context, String url) async {
  final uri = Uri.parse(url);

  try {
    final didLaunch = await launchUrl(uri);
    if (didLaunch || !context.mounted) return;
  } catch (_) {
    if (!context.mounted) return;
  }

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('This city page could not be opened right now.'),
    ),
  );
}
