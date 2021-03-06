import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../dummy_data.dart';
import '../models/category.dart';

class HomePage extends StatelessWidget {
  List<Category> _data = DUMMY_CATEGORIES;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryItem(
                id: catData.id,
                title: catData.title,
                color: catData.color,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
      ),
    );
  }
}
