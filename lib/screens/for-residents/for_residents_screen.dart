import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForResidentsPage extends StatelessWidget {
  const ForResidentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('For Residents')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Text('Go Back')
        )
      )
    );
  }
}
