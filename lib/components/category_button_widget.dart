import 'package:flutter/material.dart';
import 'package:flutter_food_app/commons/colors.dart';

class CategoryButtonWidget extends StatelessWidget {
  const CategoryButtonWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        style: ElevatedButton.styleFrom(
            backgroundColor: ColorExtention.main,
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8)
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ));
  }
}
