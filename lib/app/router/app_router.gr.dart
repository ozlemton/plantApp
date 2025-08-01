// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    GetStartedRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GetStartedScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    Onboarding1Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Onboarding1Screen(),
      );
    },
    Onboarding2Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Onboarding2Screen(),
      );
    },
    PaywallRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PaywallScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [GetStartedScreen]
class GetStartedRoute extends PageRouteInfo<void> {
  const GetStartedRoute({List<PageRouteInfo>? children})
      : super(
          GetStartedRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetStartedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Onboarding1Screen]
class Onboarding1Route extends PageRouteInfo<void> {
  const Onboarding1Route({List<PageRouteInfo>? children})
      : super(
          Onboarding1Route.name,
          initialChildren: children,
        );

  static const String name = 'Onboarding1Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Onboarding2Screen]
class Onboarding2Route extends PageRouteInfo<void> {
  const Onboarding2Route({List<PageRouteInfo>? children})
      : super(
          Onboarding2Route.name,
          initialChildren: children,
        );

  static const String name = 'Onboarding2Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaywallScreen]
class PaywallRoute extends PageRouteInfo<void> {
  const PaywallRoute({List<PageRouteInfo>? children})
      : super(
          PaywallRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaywallRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
