import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/commons/colors.dart';
import 'package:flutter_food_app/components/product_card_widget.dart';
import 'package:flutter_food_app/models/product_in_cart_model.dart';

class OrderCardWidget extends StatelessWidget {
  const OrderCardWidget({super.key, required this.productInCartModel, required this.addEvent, required this.removeEvent});

  final ProductInCartModel productInCartModel;
  final ProductAddEvent addEvent;
  final ProductAddEvent removeEvent;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 4,
        surfaceTintColor: Colors.white,
        child: Container(
            padding: const EdgeInsets.all(8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Image(
                      fit: BoxFit.contain,
                      width: 120,
                      height: 120,
                      image: AssetImage(productInCartModel.product.img)),
                  const SizedBox(width: 24,height: 1,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        productInCartModel.product.title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                       Text(
                        productInCartModel.product.subtitle,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(174, 174, 174, 1)),
                      ),
                      const SizedBox(width: 1, height: 24),
                      Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                               Text('\$ ${productInCartModel.product.price}'),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    // fixedSize: Size(30, 30),
                                      backgroundColor: ColorExtention.main,
                                      shape: const CircleBorder()),
                                  onPressed: () {
                                    removeEvent(productInCartModel.product);
                                  },
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                              ),
                               Text('${productInCartModel.count}'),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      // fixedSize: Size(30, 30),
                                      backgroundColor: ColorExtention.main,
                                      shape: const CircleBorder()),
                                  onPressed: () {
                                    addEvent(productInCartModel.product);
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
                ])));
  }
}
