import 'package:flutter_test/flutter_test.dart';
import 'package:planapp/features/home/data/models/plant_category/plant_category_model.dart';
import 'package:planapp/features/home/data/models/blog_item/blog_item_model.dart';

void main() {
  group('PlantCategory Tests', () {
    test('should create PlantCategory with correct values', () {
      final model = PlantCategory(
        id: 1,
        title: 'Indoor Plants',
        image: const PlantImage(url: 'indoor.jpg'),
      );

      expect(model.id, equals(1));
      expect(model.title, equals('Indoor Plants'));
      expect(model.image.url, equals('indoor.jpg'));
    });

    test('should create PlantCategory from JSON', () {
      final json = {
        'id': 2,
        'title': 'Outdoor Plants',
        'image': {'url': 'outdoor.jpg'},
      };

      final model = PlantCategory.fromJson(json);

      expect(model.id, equals(2));
      expect(model.title, equals('Outdoor Plants'));
      expect(model.image.url, equals('outdoor.jpg'));
    });

    test('should convert PlantCategory to JSON', () {
      final model = PlantCategory(
        id: 3,
        title: 'Succulents',
        image: const PlantImage(url: 'succulents.jpg'),
      );

      final json = model.toJson();

      expect(json['id'], equals(3));
      expect(json['title'], equals('Succulents'));
      expect(json['image'], isA<PlantImage>());
      expect(json['image'].url, equals('succulents.jpg'));
    });

    test('should support equality comparison', () {
      final model1 = PlantCategory(
        id: 1,
        title: 'Test Plant',
        image: const PlantImage(url: 'test.jpg'),
      );

      final model2 = PlantCategory(
        id: 1,
        title: 'Test Plant',
        image: const PlantImage(url: 'test.jpg'),
      );

      final model3 = PlantCategory(
        id: 2,
        title: 'Different Plant',
        image: const PlantImage(url: 'different.jpg'),
      );

      expect(model1, equals(model2));
      expect(model1, isNot(equals(model3)));
    });

    test('should support copyWith method', () {
      final original = PlantCategory(
        id: 1,
        title: 'Original Plant',
        image: const PlantImage(url: 'original.jpg'),
      );

      final copied = original.copyWith(
        title: 'Updated Plant',
        image: const PlantImage(url: 'updated.jpg'),
      );

      expect(copied.id, equals(1));
      expect(copied.title, equals('Updated Plant'));
      expect(copied.image.url, equals('updated.jpg'));
    });
  });

  group('BlogItem Tests', () {
    test('should create BlogItem with correct values', () {
      final model = BlogItem(
        id: 1,
        title: 'Plant Care Tips',
        imageUri: 'blog1.jpg',
      );

      expect(model.id, equals(1));
      expect(model.title, equals('Plant Care Tips'));
      expect(model.imageUri, equals('blog1.jpg'));
    });

    test('should create BlogItem from JSON', () {
      final json = {
        'id': 2,
        'title': 'Watering Guide',
        'image_uri': 'blog2.jpg',
      };

      final model = BlogItem.fromJson(json);

      expect(model.id, equals(2));
      expect(model.title, equals('Watering Guide'));
      expect(model.imageUri, equals('blog2.jpg'));
    });

    test('should convert BlogItem to JSON', () {
      final model = BlogItem(
        id: 3,
        title: 'Sunlight Requirements',
        imageUri: 'blog3.jpg',
      );

      final json = model.toJson();

      expect(json['id'], equals(3));
      expect(json['title'], equals('Sunlight Requirements'));
      expect(json['image_uri'], equals('blog3.jpg'));
    });

    test('should support equality comparison', () {
      final model1 = BlogItem(
        id: 1,
        title: 'Test Blog',
        imageUri: 'test.jpg',
      );

      final model2 = BlogItem(
        id: 1,
        title: 'Test Blog',
        imageUri: 'test.jpg',
      );

      final model3 = BlogItem(
        id: 2,
        title: 'Different Blog',
        imageUri: 'different.jpg',
      );

      expect(model1, equals(model2));
      expect(model1, isNot(equals(model3)));
    });

    test('should support copyWith method', () {
      final original = BlogItem(
        id: 1,
        title: 'Original Blog',
        imageUri: 'original.jpg',
      );

      final copied = original.copyWith(
        title: 'Updated Blog',
        imageUri: 'updated.jpg',
      );

      expect(copied.id, equals(1));
      expect(copied.title, equals('Updated Blog'));
      expect(copied.imageUri, equals('updated.jpg'));
    });
  });
} 