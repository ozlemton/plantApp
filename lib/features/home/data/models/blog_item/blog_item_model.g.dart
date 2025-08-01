// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogItemImpl _$$BlogItemImplFromJson(Map<String, dynamic> json) =>
    _$BlogItemImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      imageUri: json['image_uri'] as String,
    );

Map<String, dynamic> _$$BlogItemImplToJson(_$BlogItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image_uri': instance.imageUri,
    };
