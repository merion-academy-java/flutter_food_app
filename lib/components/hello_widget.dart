import 'package:flutter/material.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 24,width: 1,),
        Text('Hello', style: TextStyle(
          fontSize: 35
        ),),
        Text('What you want eat today?', style: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(133, 133, 133, 1)
        ),),
      ],
    );
  }
}
