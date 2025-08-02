import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planapp/features/onboarding/bloc/onboarding_cubit.dart';

void main() {
  group('OnboardingCubit', () {
    late OnboardingCubit onboardingCubit;

    setUp(() {
      onboardingCubit = OnboardingCubit();
    });

    tearDown(() {
      onboardingCubit.close();
    });

    test('initial state should be OnboardingInitial', () {
      expect(onboardingCubit.state, isA<OnboardingInitial>());
    });

    blocTest<OnboardingCubit, OnboardingState>(
      'emits [OnboardingCompleted] when completeOnboarding is called',
      build: () => onboardingCubit,
      act: (cubit) => cubit.completeOnboarding(),
      expect: () => [isA<OnboardingCompleted>()],
    );

    blocTest<OnboardingCubit, OnboardingState>(
      'emits correct states in sequence when completeOnboarding is called multiple times',
      build: () => onboardingCubit,
      act: (cubit) {
        cubit.completeOnboarding();
        cubit.completeOnboarding();
      },
      expect: () => [
        isA<OnboardingCompleted>(),
        isA<OnboardingCompleted>(),
      ],
    );
  });
} 