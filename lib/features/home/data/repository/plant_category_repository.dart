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

      final Map<String, dynamic> responseData = jsonDecode(response.data);
      final List<dynamic> rawList = responseData['data'];
      return rawList.map((e) {
        return PlantCategory(
          id: e['id'],
          title: e['title'],
          image: PlantImage(url: e['image']['url']),
        );
      }).toList();
    } catch (e, stack) {
      return [];
    }
  }
}
