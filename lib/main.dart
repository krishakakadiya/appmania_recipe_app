import 'package:appmania_recipe_app/screens/detail_page.dart';
import 'package:appmania_recipe_app/screens/fav_page.dart';
import 'package:appmania_recipe_app/screens/home_page.dart';
import 'package:appmania_recipe_app/screens/meal_page.dart';
import 'package:appmania_recipe_app/screens/recipe_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    RecipeApp(),
  );
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'detail_page': (context) => DetailPage(),
        'recipe_page': (context) => RecipePage(),
        'fav_page': (context) => FavPage(),
        'meal_page': (context) => MealPage(),
      },
    );
  }
}
