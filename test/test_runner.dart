import 'unit/onboarding_cubit_test.dart' as onboarding_cubit_test;
import 'unit/plant_category_cubit_test.dart' as plant_category_cubit_test;
import 'unit/model_tests.dart' as model_tests;
import 'widget/navigation_test.dart' as navigation_test;
import 'widget/screen_widget_tests.dart' as screen_widget_tests;
import 'widget_test.dart' as main_widget_test;

void main() {
  // Run all unit tests
  onboarding_cubit_test.main();
  plant_category_cubit_test.main();
  model_tests.main();
  
  // Run all widget tests
  navigation_test.main();
  screen_widget_tests.main();
  main_widget_test.main();
} 