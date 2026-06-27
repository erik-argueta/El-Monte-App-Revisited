import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BusinessRelatedPage extends StatelessWidget {
  const BusinessRelatedPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resources')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
            child: const Text('Go Back'),
        ),
      ),
    );
  }
}
