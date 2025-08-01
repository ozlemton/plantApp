import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/blog_item/blog_item_model.dart';

part 'blog_item_state.freezed.dart';

@freezed
class BlogItemState with _$BlogItemState {
  const factory BlogItemState({
    required bool isLoading,
    required List<BlogItem> blogs,
    String? error,
  }) = _BlogItemState;

  factory BlogItemState.initial() =>
      const BlogItemState(isLoading: false, blogs: [], error: null);
}
