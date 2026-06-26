import 'package:go_router/go_router.dart';
import '../screens/home/home_screen.dart';
import '../screens/resources/resources_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context , state) => const HomePage(),
    ),
    GoRoute(
      path: '/resources',
      name: 'resources',
      builder: (context, state) => const ResourcesPage()
    )
  ]
);
