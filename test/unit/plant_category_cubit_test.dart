import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:planapp/features/home/bloc/plant_category/plant_category_cubit.dart';
import 'package:planapp/features/home/bloc/plant_category/plant_category_state.dart';
import 'package:planapp/features/home/data/models/plant_category/plant_category_model.dart';
import 'package:planapp/features/home/data/repository/plant_category_repository.dart';

class MockPlantCategoryRepository extends Mock implements PlantCategoryRepository {}

void main() {
  group('PlantCategoryCubit', () {
    late PlantCategoryCubit plantCategoryCubit;
    late MockPlantCategoryRepository mockRepository;

    setUp(() {
      mockRepository = MockPlantCategoryRepository();
      plantCategoryCubit = PlantCategoryCubit(mockRepository);
    });

    tearDown(() {
      plantCategoryCubit.close();
    });

    test('initial state should be PlantCategoryState.initial()', () {
      expect(plantCategoryCubit.state, isA<PlantCategoryState>());
      expect(plantCategoryCubit.state.isLoading, isFalse);
      expect(plantCategoryCubit.state.categories, isEmpty);
      expect(plantCategoryCubit.state.error, isNull);
    });

    blocTest<PlantCategoryCubit, PlantCategoryState>(
      'emits states with loading and loaded data when fetchCategories succeeds',
      build: () {
        when(() => mockRepository.fetchPlantCategories()).thenAnswer(
          (_) async => [
            PlantCategory(
              id: 1,
              title: 'Indoor Plants',
              image: const PlantImage(url: 'indoor.jpg'),
            ),
            PlantCategory(
              id: 2,
              title: 'Outdoor Plants',
              image: const PlantImage(url: 'outdoor.jpg'),
            ),
          ],
        );
        return plantCategoryCubit;
      },
      act: (cubit) => cubit.fetchCategories(),
      expect: () => [
        isA<PlantCategoryState>().having((state) => state.isLoading, 'isLoading', isTrue),
        isA<PlantCategoryState>().having((state) => state.isLoading, 'isLoading', isFalse)
            .having((state) => state.categories.length, 'categories.length', 2)
            .having((state) => state.error, 'error', isNull),
      ],
      verify: (_) {
        verify(() => mockRepository.fetchPlantCategories()).called(1);
      },
    );

    blocTest<PlantCategoryCubit, PlantCategoryState>(
      'emits states with loading and error when fetchCategories fails',
      build: () {
        when(() => mockRepository.fetchPlantCategories()).thenThrow(
          Exception('Failed to load categories'),
        );
        return plantCategoryCubit;
      },
      act: (cubit) => cubit.fetchCategories(),
      expect: () => [
        isA<PlantCategoryState>().having((state) => state.isLoading, 'isLoading', isTrue),
        isA<PlantCategoryState>().having((state) => state.isLoading, 'isLoading', isFalse)
            .having((state) => state.error, 'error', isNotNull),
      ],
      verify: (_) {
        verify(() => mockRepository.fetchPlantCategories()).called(1);
      },
    );
  });
} 