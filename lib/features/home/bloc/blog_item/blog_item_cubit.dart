import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/blog_item_repository.dart';
import 'blog_item_state.dart';

class BlogItemCubit extends Cubit<BlogItemState> {
  final BlogItemRepository repository;

  BlogItemCubit(this.repository) : super(BlogItemState.initial());

  Future<void> fetchBlogs() async {
    try {
      emit(state.copyWith(isLoading: true));
      final blogs = await repository.fetchBlogItems();
      emit(state.copyWith(isLoading: false, blogs: blogs));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }
}
