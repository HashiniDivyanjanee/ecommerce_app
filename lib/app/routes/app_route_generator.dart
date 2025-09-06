import 'package:ecommerce_app/app/routes/app_routes.dart';
import 'package:ecommerce_app/features/auth/ui/signIn.dart';
import 'package:ecommerce_app/features/auth/ui/signUp.dart';
import 'package:ecommerce_app/features/home/ui/home.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRoute = GoRouter(
  initialLocation: AppRoutes.signIn,
  routes: [
    GoRoute(
      path: AppRoutes.signIn,
      name: '/signIn',
      builder: (context, state) => Signin(),
    ),
    GoRoute(
      path: AppRoutes.signUp,
      name: '/signUp',
      builder: (context, state) => SignUp(),
    ),
    GoRoute(
      path: AppRoutes.home,
      name: '/home',
      builder: (context, state) => Home(),
    ),
  ],
);
