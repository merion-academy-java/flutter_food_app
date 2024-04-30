import 'package:flutter/material.dart';
import 'package:flutter_food_app/components/category_button_widget.dart';
import 'package:flutter_food_app/models/category_model.dart';
import 'package:flutter_food_app/state/app_state.dart';
import 'package:provider/provider.dart';

class _Spacer extends StatelessWidget {
  const _Spacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
      width: 8,
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [];
    for (CategoryModel categoryModel in categories) {
      content.add(CategoryButtonWidget(
        text: categoryModel.title,
        onPressed: (){
          AppState state = Provider.of<AppState>(context, listen: false);
          state.selectCategory(categoryModel);
        },
      ));
      content.add(const _Spacer());
    }

    return Container(
        height: 29,
        child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(1),
            children: content));
  }
}
