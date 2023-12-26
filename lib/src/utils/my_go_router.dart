import 'package:go_router/go_router.dart';

import '../view/home_screen.dart';
import '../view/task_detail.dart';

class MyGoRouter {
  final router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
      name: 'home_screen',
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'task_detail_screen',
      path: '/task_detail_screen',
      builder: (context, state) => const TaskDetail(),
    )
  ]);
}
