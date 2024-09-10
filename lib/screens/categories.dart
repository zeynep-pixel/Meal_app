import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/category.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onToggleFavorite, required this.availableMeals});
  final void Function(Meal meal) onToggleFavorite;
  final List<Meal> availableMeals;

  void _selectCategory(BuildContext context, Category category){
    final filteredmeals = availableMeals.where((meal)=> meal.categories.contains(category.id)).toList();
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => Meals(title: category.title, meals: filteredmeals, onToggleFavorite: onToggleFavorite,)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 3 / 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
          children: [
           for (final category in availableCategories)
           CategoryGridItem(category: category, onTop: () {
             _selectCategory(context,category);
           },)
          ],
        ));
  }
}
