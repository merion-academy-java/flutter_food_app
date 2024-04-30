import 'package:flutter/material.dart';
import 'package:flutter_food_app/commons/colors.dart';
import 'package:flutter_food_app/components/button_widget.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const titleStyle = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
    );
    const subtitleStyle = TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: Color.fromRGBO(103, 103, 103, 1));

    return Scaffold(
        backgroundColor: ColorExtention.welcomeBackground,
        body: Container(
          padding: const EdgeInsets.only(bottom: 20),
          alignment: Alignment.center,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                  fit: BoxFit.contain,
                  height: 200,
                  image: AssetImage("img/pizza.png")),
              const SizedBox(
                height: 121,
              ),
              const Text(
                'Food Delivery',
                style: titleStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 22,
              ),
              const Text('We help you to find best and\ndelicious food',
                  style: subtitleStyle, textAlign: TextAlign.center),
              const SizedBox(
                height: 150,
              ),
              ButtonWidget(text: "GET STARTED", onPressed: (){
                context.go("/catalog");
              },)
            ],
          ),
        ));
  }
}
