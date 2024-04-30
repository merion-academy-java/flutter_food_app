import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/commons/colors.dart';
import 'package:flutter_food_app/models/product_model.dart';

typedef ProductAddEvent = void Function(ProductModel productModel);

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.product, required this.onAdd});

  final ProductModel product;
  final ProductAddEvent onAdd;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Card(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      fit: BoxFit.contain,
                      width: 150,
                      height: 150,
                      image: AssetImage(product.img)),
                  const SizedBox(width: 1, height: 12),
                  Text(
                    product.title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.subtitle,
                    style: const TextStyle(
                        fontSize: 12, color: Color.fromRGBO(174, 174, 174, 1)),
                  ),
                  const SizedBox(width: 1, height: 24),
                  Container(
                      alignment: Alignment.centerRight,
                      width: 150,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('\$ ${product.price}'),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  // fixedSize: Size(30, 30),
                                  backgroundColor: ColorExtention.main,
                                  shape: const CircleBorder()),
                              onPressed: () {
                                onAdd(product);
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ))
                        ],
                      ))
                ],
              ),
            )));
  }
}
