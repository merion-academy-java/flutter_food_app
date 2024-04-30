import 'package:flutter/widgets.dart';
import 'package:flutter_food_app/models/category_model.dart';
import 'package:flutter_food_app/models/product_in_cart_model.dart';
import 'package:flutter_food_app/models/product_model.dart';
import 'package:flutter_food_app/models/random.dart';

class AppState extends ChangeNotifier {
  List<CategoryModel> categories = [];
  List<ProductModel> products = [];
  List<ProductInCartModel> cart = [];

  CategoryModel? selectedCategory;
  List<ProductModel> filteredProducts = [];

  int total = 0;

  void selectCategory(CategoryModel categoryModel){
    selectedCategory = categoryModel;
    filteredProducts = [];
    for(ProductModel productModel in products){
      if(productModel.categoryId == categoryModel.id){
        filteredProducts.add(productModel);
      }
    }
    notifyListeners();
  }

  void load() {
    Future.delayed(Duration.zero, () {
      categories = RandomUtils.categories();
      products = RandomUtils.catalog(categories);
      total = 0;
      cart = [];

      filteredProducts = products;
      selectedCategory = null;
      notifyListeners();
    });
  }

  void addToCart(ProductModel productModel){
    bool hasProduct = false;
    for(ProductInCartModel productInCartModel in cart){
      if(productInCartModel.product.id == productModel.id){
        productInCartModel.count = productInCartModel.count +1;
        hasProduct = true;
        break;
      }
    }

    if(hasProduct == false){
      ProductInCartModel productInCartModel = ProductInCartModel(productModel, 1);
      cart.add(productInCartModel);
    }

    int sum = 0;
    for(ProductInCartModel productInCartModel in cart){
      sum = sum + productInCartModel.total();
    }

    total = sum;
    notifyListeners();
  }

  void removeFromCart(ProductModel productModel){
    for(ProductInCartModel productInCartModel in cart){
      if(productInCartModel.product.id == productModel.id){
        productInCartModel.count = productInCartModel.count - 1;
        break;
      }
    }

    cart.removeWhere((element) => element.count < 1);

    int sum = 0;
    for(ProductInCartModel productInCartModel in cart){
      sum = sum + productInCartModel.total();
    }

    total = sum;
    notifyListeners();
  }
}
