import 'package:flutter/material.dart';
import 'package:flutter_food_app/components/button_widget.dart';
import 'package:flutter_food_app/components/order_card_widget.dart';
import 'package:flutter_food_app/state/app_state.dart';
import 'package:provider/provider.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Order Details'),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Consumer<AppState>(
              builder: (context, state, child) {
                int total = state.cart.length + 2;

                return ListView.builder(
                    itemCount: total,
                    itemBuilder: (context, index) {
                      if (index == total - 2) {
                        return Container(
                          padding: const EdgeInsets.only(top: 24),
                          alignment: Alignment.centerRight,
                          child: Text(
                            '\$ ${state.total}',
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          ),
                        );
                      }

                      if (index == total - 1) {
                        return Column(
                          children: [
                            const SizedBox(
                              width: 1,
                              height: 78,
                            ),
                            ButtonWidget(
                              text: "CHECKOUT",
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 1,
                              height: 32,
                            ),
                          ],
                        );
                      }

                      return  Column(children: [
                        OrderCardWidget(
                          productInCartModel: state.cart[index],
                          addEvent: state.addToCart,
                          removeEvent: state.removeFromCart,
                        ),
                        const SizedBox(
                          height: 20,
                          width: 1,
                        )
                      ]);
                    });
              },
            )));
  }
}
