import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_item_model.freezed.dart';

part 'blog_item_model.g.dart';

@freezed
class BlogItem with _$BlogItem {
  const factory BlogItem({
    required int id,
    required String title,
    @JsonKey(name: 'image_uri') required String imageUri,
  }) = _BlogItem;

  factory BlogItem.fromJson(Map<String, dynamic> json) =>
      _$BlogItemFromJson(json);
}
