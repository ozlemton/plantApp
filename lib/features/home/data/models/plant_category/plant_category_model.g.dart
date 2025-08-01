// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantCategoryImpl _$$PlantCategoryImplFromJson(Map<String, dynamic> json) =>
    _$PlantCategoryImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      image: PlantImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlantCategoryImplToJson(_$PlantCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

_$PlantImageImpl _$$PlantImageImplFromJson(Map<String, dynamic> json) =>
    _$PlantImageImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PlantImageImplToJson(_$PlantImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
