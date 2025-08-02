import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planapp/app/router/app_router.dart';
import 'package:planapp/features/onboarding/views/get_started_screen.dart';
import 'package:planapp/features/onboarding/views/onboarding1_screen.dart';
import 'package:planapp/features/onboarding/views/onboarding2_screen.dart';
import 'package:planapp/features/home/views/home_screen.dart';
import 'package:planapp/features/paywall/views/paywall_screen.dart';

void main() {
  group('Screen Widget Tests', () {
    late AppRouter appRouter;

    setUp(() {
      appRouter = AppRouter();
    });

    group('GetStartedScreen', () {
      testWidgets('should display correct UI elements', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp.router(
            routerConfig: appRouter.config(),
          ),
        );

        // Wait for splash screen to complete
        await tester.pumpAndSettle(const Duration(seconds: 3));

        // Verify UI elements are present
        expect(find.byType(GetStartedScreen), findsOneWidget);
        expect(find.byType(ElevatedButton), findsOneWidget);
        expect(find.text('Get Started'), findsOneWidget);
      });

      testWidgets('should have proper button styling', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp.router(
            routerConfig: appRouter.config(),
          ),
        );

        await tester.pumpAndSettle(const Duration(seconds: 3));

        final button = find.byType(ElevatedButton);
        expect(button, findsOneWidget);

        // Test button tap
        await tester.tap(button);
        await tester.pumpAndSettle();

        // Verify navigation occurred
        expect(find.byType(Onboarding1Screen), findsOneWidget);
      });
    });

    group('Onboarding1Screen', () {
      testWidgets('should display onboarding content', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp.router(
            routerConfig: appRouter.config(),
          ),
        );

        // Navigate to onboarding1
        await tester.pumpAndSettle(const Duration(seconds: 3));
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        expect(find.byType(Onboarding1Screen), findsOneWidget);
        expect(find.byType(ElevatedButton), findsOneWidget);
      });

      testWidgets('should navigate to next onboarding screen', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp.router(
            routerConfig: appRouter.config(),
          ),
        );

        // Navigate to onboarding1
        await tester.pumpAndSettle(const Duration(seconds: 3));
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        // Navigate to next screen
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        expect(find.byType(Onboarding2Screen), findsOneWidget);
      });
    });

    group('Onboarding2Screen', () {
      testWidgets('should display second onboarding content', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp.router(
            routerConfig: appRouter.config(),
          ),
        );

        // Navigate to onboarding2
        await tester.pumpAndSettle(const Duration(seconds: 3));
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        expect(find.byType(Onboarding2Screen), findsOneWidget);
        expect(find.byType(ElevatedButton), findsOneWidget);
      });

      testWidgets('should navigate to paywall screen', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp.router(
            routerConfig: appRouter.config(),
          ),
        );

        // Navigate to onboarding2
        await tester.pumpAndSettle(const Duration(seconds: 3));
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        // Navigate to paywall
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        expect(find.byType(PaywallScreen), findsOneWidget);
      });
    });

    group('PaywallScreen', () {
      testWidgets('should display paywall content', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp.router(
            routerConfig: appRouter.config(),
          ),
        );

        // Navigate to paywall
        await tester.pumpAndSettle(const Duration(seconds: 3));
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        expect(find.byType(PaywallScreen), findsOneWidget);
        expect(find.byType(ElevatedButton), findsOneWidget);
      });

      testWidgets('should navigate to home screen', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp.router(
            routerConfig: appRouter.config(),
          ),
        );

        // Navigate to paywall
        await tester.pumpAndSettle(const Duration(seconds: 3));
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        // Navigate to home
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        expect(find.byType(HomeScreen), findsOneWidget);
      });
    });

    group('HomeScreen', () {
      testWidgets('should display home screen content', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp.router(
            routerConfig: appRouter.config(),
          ),
        );

        // Navigate to home
        await tester.pumpAndSettle(const Duration(seconds: 3));
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        expect(find.byType(HomeScreen), findsOneWidget);
      });
    });
  });
} 