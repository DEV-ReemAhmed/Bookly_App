import 'package:bookly_app/features/home/presentation/views/book_detailes_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/SearchView.dart';
import 'package:bookly_app/features/splash/presentation/views/Splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: '/BookDetailesView',
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => Searchview(),
      ),
    ],
  );
}
