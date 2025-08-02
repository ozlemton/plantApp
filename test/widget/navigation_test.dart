import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planapp/app/app.dart';
import 'package:planapp/app/router/app_router.dart';
import 'package:planapp/features/onboarding/views/get_started_screen.dart';
import 'package:planapp/features/onboarding/views/onboarding1_screen.dart';
import 'package:planapp/features/onboarding/views/onboarding2_screen.dart';
import 'package:planapp/features/home/views/home_screen.dart';
import 'package:planapp/features/paywall/views/paywall_screen.dart';

void main() {
  group('Navigation Tests', () {
    late AppRouter appRouter;

    setUp(() {
      appRouter = AppRouter();
    });

    testWidgets('should navigate from splash to get started screen', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: appRouter.config(),
        ),
      );

      // Wait for splash screen to complete
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Verify we're on the get started screen
      expect(find.byType(GetStartedScreen), findsOneWidget);
    });

    testWidgets('should navigate from get started to onboarding1', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: appRouter.config(),
        ),
      );

      // Wait for splash screen to complete
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Find and tap the get started button
      final getStartedButton = find.byType(ElevatedButton);
      expect(getStartedButton, findsOneWidget);
      
      await tester.tap(getStartedButton);
      await tester.pumpAndSettle();

      // Verify we're on the onboarding1 screen
      expect(find.byType(Onboarding1Screen), findsOneWidget);
    });

    testWidgets('should navigate through onboarding flow', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: appRouter.config(),
        ),
      );

      // Wait for splash screen to complete
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Navigate to onboarding1
      final getStartedButton = find.byType(ElevatedButton);
      await tester.tap(getStartedButton);
      await tester.pumpAndSettle();

      expect(find.byType(Onboarding1Screen), findsOneWidget);

      // Navigate to onboarding2
      final nextButton = find.byType(ElevatedButton);
      await tester.tap(nextButton);
      await tester.pumpAndSettle();

      expect(find.byType(Onboarding2Screen), findsOneWidget);

      // Navigate to paywall
      final continueButton = find.byType(ElevatedButton);
      await tester.tap(continueButton);
      await tester.pumpAndSettle();

      expect(find.byType(PaywallScreen), findsOneWidget);
    });

    testWidgets('should navigate to home screen after paywall', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: appRouter.config(),
        ),
      );

      // Wait for splash screen to complete
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Navigate through the flow to paywall
      final getStartedButton = find.byType(ElevatedButton);
      await tester.tap(getStartedButton);
      await tester.pumpAndSettle();

      final nextButton = find.byType(ElevatedButton);
      await tester.tap(nextButton);
      await tester.pumpAndSettle();

      final continueButton = find.byType(ElevatedButton);
      await tester.tap(continueButton);
      await tester.pumpAndSettle();

      // Navigate to home from paywall
      final homeButton = find.byType(ElevatedButton);
      await tester.tap(homeButton);
      await tester.pumpAndSettle();

      expect(find.byType(HomeScreen), findsOneWidget);
    });

    testWidgets('should handle back navigation correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: appRouter.config(),
        ),
      );

      // Wait for splash screen to complete
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Navigate to onboarding1
      final getStartedButton = find.byType(ElevatedButton);
      await tester.tap(getStartedButton);
      await tester.pumpAndSettle();

      expect(find.byType(Onboarding1Screen), findsOneWidget);

      // Test back navigation
      await tester.pageBack();
      await tester.pumpAndSettle();

      expect(find.byType(GetStartedScreen), findsOneWidget);
    });
  });
} 