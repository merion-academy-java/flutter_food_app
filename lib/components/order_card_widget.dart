import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_app/commons/colors.dart';

class OrderCardWidget extends StatelessWidget {
  const OrderCardWidget({super.key});

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
                  const Image(
                      fit: BoxFit.contain,
                      width: 120,
                      height: 120,
                      image: AssetImage("img/pizza.png")),
                  SizedBox(width: 24,height: 1,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Meat Pizza',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Mixed Pizza',
                        style: TextStyle(
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
                              const Text('\$ 8.30'),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    // fixedSize: Size(30, 30),
                                      backgroundColor: ColorExtention.main,
                                      shape: const CircleBorder()),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                              ),
                              const Text('1'),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      // fixedSize: Size(30, 30),
                                      backgroundColor: ColorExtention.main,
                                      shape: const CircleBorder()),
                                  onPressed: () {},
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
