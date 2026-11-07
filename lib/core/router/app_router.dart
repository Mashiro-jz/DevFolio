import 'package:devfolio/features/contact/presentation/screens/contact_screen.dart';
import 'package:devfolio/features/home/presentation/screens/home_screen.dart';
import 'package:devfolio/features/journey/presentation/screens/journey_screen.dart';
import 'package:devfolio/features/projects/presentation/screens/projects_screen.dart';
import 'package:devfolio/features/skills/presentation/screens/skills_screen.dart';
import 'package:devfolio/shared/widgets/main_shell_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/projects',
                builder: (context, state) => const ProjectsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/skills',
                builder: (context, state) => const SkillsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/journey',
                builder: (context, state) => const JourneyScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/contact',
                builder: (context, state) => const ContactScreen(),
              ),
            ],
          ),
        ],
        builder: (context, state, navigationShell) {
          return MainShellScreen(navigationShell: navigationShell);
        },
      ),
    ],
  );
}
