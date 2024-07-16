import 'package:appmania_recipe_app/screens/detail_page.dart';
import 'package:appmania_recipe_app/screens/fav_page.dart';
import 'package:appmania_recipe_app/screens/home_page.dart';
import 'package:appmania_recipe_app/screens/meal_page.dart';
import 'package:appmania_recipe_app/screens/recipe_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const RecipeApp(),
  );
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'detail_page': (context) => const DetailPage(),
        'recipe_page': (context) => const RecipePage(),
        'fav_page': (context) => const FavPage(),
        'meal_page': (context) => const MealPage(),
      },
    );
  }
}
