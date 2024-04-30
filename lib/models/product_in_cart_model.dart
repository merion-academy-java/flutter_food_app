import 'package:flutter_food_app/models/product_model.dart';

class ProductInCartModel {
  ProductModel product;
  int count = 0;

  ProductInCartModel(this.product, this.count);

  ProductInCartModel.of(this.product);

  int total() {
    return count * product.price;
  }
}
