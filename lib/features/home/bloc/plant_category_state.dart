import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/plant_category/plant_category_model.dart';

part 'plant_category_state.freezed.dart';

@freezed
class PlantCategoryState with _$PlantCategoryState {
  const factory PlantCategoryState({
    required bool isLoading,
    required List<PlantCategory> categories,
    String? error,
  }) = _PlantCategoryState;

  factory PlantCategoryState.initial() =>
      const PlantCategoryState(isLoading: false, categories: [], error: null);
}
