import 'package:flutter/material.dart';
import 'package:flutter_food_app/components/button_widget.dart';
import 'package:flutter_food_app/components/order_card_widget.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int total = 5;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Order Details'),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: ListView.builder(
                itemCount: total,
                itemBuilder: (context, index) {

                  if(index == total - 2 ){
                    return Container(
                      padding: const EdgeInsets.only(top: 24),
                      alignment: Alignment.centerRight,
                      child: const Text('\$ 23.40',
                      style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w900
                      ),),
                    );
                  }

                  if(index == total -1 ){
                    return Column(children: [
                      const SizedBox(width: 1,height: 78,),
                      ButtonWidget(text: "CHECKOUT", onPressed: (){},),
                      const SizedBox(width: 1,height: 32,),
                    ],);
                  }

                  return const Column(children: [
                    OrderCardWidget(),
                    SizedBox(
                      height: 20,
                      width: 1,
                    )
                  ]);
                })));
  }
}
