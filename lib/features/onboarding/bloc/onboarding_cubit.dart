import 'package:bloc/bloc.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  void completeOnboarding() {
    emit(OnboardingCompleted());
  }
}
