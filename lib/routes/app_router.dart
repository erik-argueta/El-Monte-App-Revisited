import 'package:go_router/go_router.dart';
import '../widgets/main_shell.dart';
import '../screens/home/home_screen.dart';
import '../screens/resources/resources_screen.dart';
import '../screens/for-residents/for_residents_screen.dart';
import '../screens/govt-related/govt_related_screen.dart';
import '../screens/how-do/how_do_screen.dart';
import '../screens/business-related/business_related_screen.dart';
import '../screens/calendar/calendar_screen.dart';
import '../screens/profile/profile_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainShell(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const HomePage()
        ),

        // Route dedicated to the Resources page
        GoRoute(
          path: '/resources',
          name: 'resources',
          builder: (context, state) => const ResourcesPage()
        ),

        // Route dedicated to the For Residents page
        GoRoute(
          path: '/for-residents',
          name: 'residents',
          builder: (context, state) => const ForResidentsPage()
        ),

        // Route dedicated to Government Related page
        GoRoute(
          path: '/govt-related',
          name: 'govt',
          builder: (context, state) => const GovtRelatedPage()
        ),
      
      // Route dedicated to Business Related page 
        GoRoute(
          path: '/business-related',
          name: 'business',
          builder: (context, state) => const BusinessRelatedPage()
        ),
        
        // Route dedicated to the How Do I page
        GoRoute(
          path: '/how-do-i',
          name: 'HowDoI',
          builder: (context, state) => const HowDoIPage()
        ),

        // Route dedicated to Calendar Page
        GoRoute(
          path: '/calendar',
          name: 'calendar',
          builder: (context, status) => CalendarPage()
        ),

        // Route dedicated to Profile page 
        GoRoute(
          path: '/profile',
          name: 'profile',
          builder: (context, status) => ProfilePage()
        ),
      ],
    ),    
  ]
);


