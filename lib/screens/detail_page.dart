import 'package:appmania_recipe_app/utils/products.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  bool isFav = false;
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    Map<String, dynamic> detail =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
          // title:Text(),
          ),
      backgroundColor: Colors.brown.shade300,
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: s.height * 0.4,
                width: s.width * 10,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      detail['image'],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              detail['name'],
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              if (!fav.contains(detail)) {
                                fav.add(detail);
                                setState(() {});
                              } else {
                                fav.remove(detail);
                                setState(() {});
                              }
                            },
                            icon: fav.contains(detail)
                                ? const Icon(
                                    Icons.favorite,
                                    size: 30,
                                    color: Colors.brown,
                                  )
                                : const Icon(
                                    Icons.favorite_outline,
                                    size: 30,
                                    color: Colors.brown,
                                  ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              if (!meal.contains(detail)) {
                                meal.add(detail);
                                setState(() {});
                              } else {
                                meal.remove(detail);
                                setState(() {});
                              }
                            },
                            icon: meal.contains(detail)
                                ? const Icon(
                                    Icons.no_meals_ouline,
                                    size: 30,
                                    color: Colors.brown,
                                  )
                                : const Icon(
                                    Icons.set_meal,
                                    size: 30,
                                    color: Colors.brown,
                                  ),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
