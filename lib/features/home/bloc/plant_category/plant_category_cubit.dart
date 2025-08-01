import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repository/plant_category_repository.dart';
import 'plant_category_state.dart';

class PlantCategoryCubit extends Cubit<PlantCategoryState> {
  final PlantCategoryRepository repository;

  PlantCategoryCubit(this.repository) : super(PlantCategoryState.initial());

  Future<void> fetchCategories() async {
    try {
      emit(state.copyWith(isLoading: true));
      final categories = await repository.fetchPlantCategories();
      emit(state.copyWith(isLoading: false, categories: categories));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }
}
