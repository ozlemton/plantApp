import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planapp/app/router/app_router.dart';

void main() {
  group('Simple Navigation Tests', () {
    late AppRouter appRouter;

    setUp(() {
      appRouter = AppRouter();
    });

    testWidgets('should create app router with correct configuration', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: appRouter.config(),
        ),
      );

      // Verify the app starts without errors
      expect(find.byType(MaterialApp), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('should have router configuration', (WidgetTester tester) async {
      final config = appRouter.config();
      
      expect(config, isNotNull);
    });

    testWidgets('should handle basic navigation setup', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: appRouter.config(),
        ),
      );

      // Wait for the app to initialize
      await tester.pump(const Duration(milliseconds: 100));

      // Verify the app is running
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
} 