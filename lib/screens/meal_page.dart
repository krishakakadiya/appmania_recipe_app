import 'package:appmania_recipe_app/utils/products.dart';
import 'package:flutter/material.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        title: const Text("Your meal Plan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: meal
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          'detail_page',
                          arguments: e,
                        );
                      },
                      onDoubleTap: () {
                        Navigator.of(context).pushNamed('recipe_page');
                      },
                      child: Container(
                        height: s.height * 0.6,
                        width: s.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.brown.shade300,
                            image: DecorationImage(
                              image: NetworkImage(
                                e['image'],
                              ),
                              fit: BoxFit.cover,
                            )),
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            meal.remove(e);
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.no_meals_ouline,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
