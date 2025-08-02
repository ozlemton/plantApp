# PlanApp Test Suite

This test package contains comprehensive unit tests and widget tests for the PlanApp Flutter application.

## Test Structure

```
test/
├── unit/                           # Unit tests
│   ├── onboarding_cubit_test.dart  # OnboardingCubit tests
│   ├── plant_category_cubit_test.dart # PlantCategoryCubit tests
│   └── model_tests.dart            # Data model tests
├── widget/                         # Widget tests
│   ├── navigation_test.dart        # Page navigation tests
│   ├── screen_widget_tests.dart    # Screen widget tests
│   └── simple_navigation_test.dart # Simple navigation tests
├── widget_test.dart                # Main widget test
├── test_runner.dart                # Test runner for all tests
└── README.md                       # This file
```

## Test Types

### 1. Unit Tests

#### OnboardingCubit Tests
- `test/unit/onboarding_cubit_test.dart`
- Tests onboarding state transitions
- Validates the behavior of `completeOnboarding()` method

#### PlantCategoryCubit Tests
- `test/unit/plant_category_cubit_test.dart`
- Tests plant category loading operations
- Checks successful and failed states
- Uses mock repository to isolate dependencies

#### Model Tests
- `test/unit/model_tests.dart`
- Tests `PlantCategory` and `BlogItem` models
- Validates JSON serialization/deserialization operations
- Tests `copyWith` methods
- Checks equality comparisons

### 2. Widget Tests

#### Simple Navigation Tests
- `test/widget/simple_navigation_test.dart`
- Tests router configuration
- Validates basic navigation setup

#### Main Widget Test
- `test/widget_test.dart`
- Tests the basic structure of the application
- Checks initial state

## Running Tests

### Run All Tests
```bash
flutter test
```

### Run Only Unit Tests
```bash
flutter test test/unit/
```

### Run Only Widget Tests
```bash
flutter test test/widget/
```

### Run Specific Test File
```bash
flutter test test/unit/onboarding_cubit_test.dart
```

### Run Specific Test Group
```bash
flutter test --plain-name "OnboardingCubit"
```

## Test Dependencies

The following packages have been added to `pubspec.yaml`:

```yaml
dev_dependencies:
  bloc_test: ^10.0.0      # For BLoC tests
  mocktail: ^1.0.3        # For mock objects
  flutter_test:           # For widget tests (comes with Flutter SDK)
```

## Test Writing Guide

### BLoC Tests
```dart
blocTest<CubitType, StateType>(
  'test description',
  build: () => cubit,
  act: (cubit) => cubit.someMethod(),
  expect: () => [expectedState1, expectedState2],
  verify: (_) => verify(mock.method()).called(1),
);
```

### Widget Tests
```dart
testWidgets('test description', (WidgetTester tester) async {
  await tester.pumpWidget(MyWidget());
  await tester.pumpAndSettle();
  
  expect(find.byType(SomeWidget), findsOneWidget);
  expect(find.text('Expected Text'), findsOneWidget);
});
```

### Model Tests
```dart
test('should create model with correct values', () {
  final model = MyModel(id: 1, name: 'Test');
  
  expect(model.id, equals(1));
  expect(model.name, equals('Test'));
});
```

## Test Coverage

To generate test coverage report:

```bash
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```

## Important Notes

1. **Mock Usage**: Use mocks when testing external dependencies (API, repository)
2. **State Testing**: Cover both successful and failed scenarios when testing BLoC states
3. **Widget Testing**: Be careful with timeout issues when using `pumpAndSettle()` in widget tests
4. **Async Testing**: Don't forget to use `await` when testing asynchronous operations

## Troubleshooting

### Test Timeout Issues
- Use `pump(Duration())` instead of `pumpAndSettle()` in widget tests
- Increase timeout duration for long-running operations

### Import Issues
- Make sure you use correct import paths in test files
- Check that generated files (`.g.dart`, `.freezed.dart`) are created

### Mock Issues
- Create mock objects in `setUp()`
- Clean up mocks in `tearDown()` 