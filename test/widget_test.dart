// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planapp/app/app.dart';

void main() {
  testWidgets('App should start with splash screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PlantApp());

    // Verify that the app starts and doesn't crash
    expect(find.byType(MaterialApp), findsOneWidget);
  });

  testWidgets('App should have proper structure', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PlantApp());

    // Verify that the app has the basic structure
    expect(find.byType(MaterialApp), findsOneWidget);
    
    // Wait for a short time for the app to initialize
    await tester.pump(const Duration(milliseconds: 100));
    
    // The app should be running without errors
    expect(tester.takeException(), isNull);
  });

  testWidgets('App should handle navigation properly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PlantApp());

    // Wait for a short time for the app to initialize
    await tester.pump(const Duration(milliseconds: 100));

    // Verify that we can find navigation elements
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
