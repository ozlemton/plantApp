import 'package:auto_route/auto_route.dart';

import '../../features/home/views/home_screen.dart';
import '../../features/onboarding/views/get_started_screen.dart';
import '../../features/onboarding/views/onboarding1_screen.dart';
import '../../features/onboarding/views/onboarding2_screen.dart';
import '../../features/paywall/views/paywall_screen.dart';
import '../splash_Screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: GetStartedRoute.page),
    AutoRoute(page: Onboarding1Route.page),
    AutoRoute(page: Onboarding2Route.page),
    AutoRoute(page: PaywallRoute.page),
    AutoRoute(page: HomeRoute.page),
  ];
}
