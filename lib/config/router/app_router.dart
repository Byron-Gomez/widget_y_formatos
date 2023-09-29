

import 'package:go_router/go_router.dart';
import 'package:widget_y_formatos/config/presentation/screens/home/home_screen.dart';

final appRouter = GoRouter(
initialLocation: '/',
routes:[

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()
    ),

    GoRoute(
      path: '/buttons',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()
    ),

    GoRoute(
      path: '/cards',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()
    ),
]
);