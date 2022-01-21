import 'package:go_router/go_router.dart';
import 'package:travel/features/city/presentation/pages/citry.screen.dart';
import 'package:travel/features/home/presentation/pages/home.screen.dart';
import 'package:travel/features/intro/presentation/pages/explore.screen.dart';
import 'package:travel/features/intro/presentation/pages/intro.screen.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const IntroScreen(),
        routes: [
          GoRoute(
            path: 'explore',
            builder: (context, state) => const ExploreScreen(),
          ),
        ],
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'city',
            builder: (context, state) => const CityScreen(),
          ),
        ],
      ),
    ],
  );
}
