import 'dart:convert';
import 'package:dio/dio.dart';
import '../models/plant_category/plant_category_model.dart';

class PlantCategoryRepository {
  final Dio _dio;

  PlantCategoryRepository(this._dio);

  Future<List<PlantCategory>> fetchPlantCategories() async {
    try {
      final response = await _dio.get(
        "https://dummy-api-jtg6bessta-ey.a.run.app/getCategories",
      );
      if (response.statusCode != 200) {
        throw Exception("Failed to fetch categories: ${response.statusCode}");
      }
      final decoded = jsonDecode(response.data);
      if (decoded is! Map<String, dynamic> || !decoded.containsKey('data')) {
        throw Exception("Unexpected response format");
      }
      final List<dynamic> rawList = decoded['data'];

      return rawList.map((e) {
        return PlantCategory(
          id: e['id'],
          title: e['title'],
          image: PlantImage(url: e['image']['url']),
        );
      }).toList();
    } on DioException catch (dioError) {
      throw Exception("Network error: ${dioError.message}");
    } catch (e) {
      throw Exception("An error occurred while fetching categories: $e");
    }
  }
}
