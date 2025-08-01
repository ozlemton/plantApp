import 'dart:convert';
import 'package:dio/dio.dart';
import '../models/blog_item/blog_item_model.dart';

class BlogItemRepository {
  final Dio _dio;
  BlogItemRepository(this._dio);

  Future<List<BlogItem>> fetchBlogItems() async {
    try {
      final response = await _dio.get(
        "https://dummy-api-jtg6bessta-ey.a.run.app/getQuestions",
      );
      final List<dynamic> data = jsonDecode(response.data);
      return data.map((e) => BlogItem.fromJson(e)).toList();
    } catch (e, stack) {
      return [];
    }
  }
}
