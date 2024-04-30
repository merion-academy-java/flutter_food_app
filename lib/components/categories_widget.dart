import 'package:flutter/material.dart';
import 'package:flutter_food_app/components/category_button_widget.dart';

class _Spacer extends StatelessWidget {

  const _Spacer({super.key});

  @override
  Widget build(BuildContext context){
    return const SizedBox(height: 10, width: 8,);
  }
}

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
        child: ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(1),
      children: [
        const CategoryButtonWidget(text: 'Pizza',),
        _Spacer(),
        const CategoryButtonWidget(text: 'Pasta',),
        _Spacer(),
        const CategoryButtonWidget(text: 'Burget',),
        _Spacer(),
        const CategoryButtonWidget(text: 'Sushi',),
        _Spacer(),
      ],
    ));
  }
}
