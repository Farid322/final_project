import 'package:go_router/go_router.dart';
import 'package:graduation_project/views/about_diabelt.dart';
import 'package:graduation_project/views/login.dart';
import 'package:graduation_project/views/logo.dart';

class RouterNames {
  static const LogoPage = '/';
  static const LoginPage = '/salman';
  static const AboutDiabelt = '/aboutdiablet';
}

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: RouterNames.LogoPage,
      builder: (context, state) => LogoPage(),
    ),
    GoRoute(
      path: RouterNames.AboutDiabelt,
      builder: (context, state) => AboutDiabelt(),
    ),
    
  ]);
}
