import 'package:flutter/material.dart';
import 'package:flutter_food_app/commons/colors.dart';
import 'package:flutter_food_app/components/categories_widget.dart';
import 'package:flutter_food_app/components/hello_widget.dart';
import 'package:flutter_food_app/components/product_card_widget.dart';
import 'package:flutter_food_app/models/product_model.dart';
import 'package:flutter_food_app/state/app_state.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: Consumer<AppState>(
            builder: (context, state, chile) {
              return ListView.builder(
                  itemCount: 2 + state.filteredProducts.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return const HelloWidget();
                    }

                    if (index == 1) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: CategoriesWidget(categories: state.categories));
                    }

                    int curProductIndex = (index - 2) ~/ 2;
                    ProductModel? productLeft, productRight;
                    productLeft = state.filteredProducts[curProductIndex];

                    if(curProductIndex < state.filteredProducts.length - 1){
                      productRight = state.filteredProducts[curProductIndex + 1];
                    }

                    return Row(
                      children: [
                        ProductCardWidget(product: productLeft, onAdd: state.addToCart,),
                        const SizedBox(
                          height: 1,
                          width: 8,
                        ),
                        (productRight != null ? ProductCardWidget(product: productRight, onAdd: state.addToCart,) : Container())
                      ],
                    );
                  });
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/order');
        },
        backgroundColor: ColorExtention.main,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}
