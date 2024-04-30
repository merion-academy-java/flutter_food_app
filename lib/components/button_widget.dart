import 'package:flutter/material.dart';
import 'package:flutter_food_app/commons/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.text, this.onPressed});

  final String text;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      maximumSize: const Size.fromWidth(390),
        fixedSize: const Size.fromHeight(70),
        alignment: Alignment.center,
        backgroundColor: ColorExtention.main,
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(12), // <-- Radius
        // )


    );

    const textStyle = TextStyle(
        color: Colors.white,
        fontSize: 21,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        height: 1);

    return ElevatedButton(style: style, onPressed: onPressed, child: Text(text,
      textAlign: TextAlign.center,
      style: textStyle,));
  }
}
