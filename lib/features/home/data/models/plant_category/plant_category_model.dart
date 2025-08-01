import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_category_model.freezed.dart';

part 'plant_category_model.g.dart';

@freezed
class PlantCategory with _$PlantCategory {
  const factory PlantCategory({
    required int id,
    required String title,
    required PlantImage image,
  }) = _PlantCategory;

  factory PlantCategory.fromJson(Map<String, dynamic> json) =>
      _$PlantCategoryFromJson(json);
}

@freezed
class PlantImage with _$PlantImage {
  const factory PlantImage({required String url}) = _PlantImage;

  factory PlantImage.fromJson(Map<String, dynamic> json) =>
      _$PlantImageFromJson(json);
}
