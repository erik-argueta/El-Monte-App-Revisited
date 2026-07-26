import 'package:flutter/material.dart';
import 'routes/app_router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'City Connect',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF155C66),
          primary: const Color(0xFF155C66),
          secondary: const Color(0xFFB79B54),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFFEDF7F6),
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontWeight: FontWeight.w800,
            letterSpacing: -0.4,
          ),
          titleMedium: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
