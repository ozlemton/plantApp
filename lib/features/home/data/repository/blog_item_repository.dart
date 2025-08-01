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
      if (response.statusCode != 200) {
        throw Exception("Failed to fetch blog items: ${response.statusCode}");
      }
      final decoded = jsonDecode(response.data);
      if (decoded is! List) {
        throw Exception("Unexpected response format for blog items");
      }
      return decoded.map((e) => BlogItem.fromJson(e)).toList();
    } on DioException catch (dioError) {
      throw Exception("Network error: ${dioError.message}");
    } catch (e) {
      throw Exception("An error occurred while fetching blog items: $e");
    }
  }
}
