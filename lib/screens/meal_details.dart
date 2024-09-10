import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;

  const MealDetailsScreen({super.key, required this.meal, required this.onToggleFavorite});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(onPressed: (){onToggleFavorite(meal);}, icon: const Icon(Icons.star))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.network(
            meal.imageUrl,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 14,),
          Text('İçindekiler', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: const Color.fromARGB(255, 170, 88, 88))),
          const SizedBox(height: 14,),
          for(final ingredient in meal.ingredients)
           Text(ingredient,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white)),
           const SizedBox(height: 24,),
          Text('Adımlar', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: const Color.fromARGB(255, 170, 88, 88))),
          const SizedBox(height: 14,),
          for(final steps in meal.steps)
           Padding(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),child: Text(steps,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),textAlign: TextAlign.center,))
        ]),
      ),
      
    );
  }
}
