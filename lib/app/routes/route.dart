import 'package:go_router/go_router.dart';
import 'package:park_in_refactor/views/home/home.view.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeView();
      },
    ),
  ],
);
