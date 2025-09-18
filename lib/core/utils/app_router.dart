import 'package:go_router/go_router.dart';
import 'package:keto_app/features/home/presentaion/views/home_view.dart';
import 'package:keto_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
