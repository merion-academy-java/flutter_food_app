import 'dart:math';

import 'package:flutter_food_app/models/category_model.dart';
import 'package:flutter_food_app/models/product_model.dart';
import 'package:uuid/uuid.dart';

class RandomUtils {
  static const Uuid uuid = Uuid();
  static final Random random = Random();

  static String id() {
    return uuid.v4();
  }

  static List<CategoryModel> categories() {
    return [
      CategoryModel.of("1", 'pizza'),
      CategoryModel.of("2", 'sushi'),
      CategoryModel.of("3", 'pasta'),
      CategoryModel.of("4", 'burger'),
    ];
  }

  static int between(int min, int max) {
    return random.nextInt(max - min) + min;
  }

  static List<ProductModel> catalog(List<CategoryModel> categories) {
    int count = between(3, 20);
    List<ProductModel> products = [];
    for (int i = 0; i < count; i++) {
      products.add(product(categories));
    }
    return products;
  }

  static ProductModel product(List<CategoryModel> categories) {
    List<String> titles = ['Meat Pizza', 'Sushi plate', 'Big Burger'];
    List<String> subtitles = ['So yammy', 'Origato', 'Big boom'];
    List<String> img = ['img/pizza.png', 'img/burger.png', 'img/sushi.png'];

    return ProductModel.of(
        uuid.v4(),
        titles[random.nextInt(titles.length)],
        subtitles[random.nextInt(subtitles.length)],
        img[random.nextInt(img.length)],
        categories[random.nextInt(categories.length)].id,
        between(2, 15));
  }
}
