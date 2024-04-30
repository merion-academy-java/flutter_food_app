import 'package:flutter/material.dart';
import 'package:flutter_food_app/commons/colors.dart';
import 'package:flutter_food_app/components/categories_widget.dart';
import 'package:flutter_food_app/components/hello_widget.dart';
import 'package:flutter_food_app/components/product_card_widget.dart';
import 'package:go_router/go_router.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: ListView.builder(
                itemCount: 2 + 30,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const HelloWidget();
                  }

                  if (index == 1) {
                    return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: CategoriesWidget());
                  }
                  return const Row(
                    children: [
                      ProductCardWidget(),
                      SizedBox(
                        height: 1,
                        width: 8,
                      ),
                      ProductCardWidget()
                    ],
                  );
                })),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.push('/order');
        },
        backgroundColor: ColorExtention.main,
        shape: CircleBorder(),
        child: Icon(Icons.shopping_cart, color: Colors.white,),
      ),
    );
  }
}
