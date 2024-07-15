import 'package:appmania_recipe_app/utils/products.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yummy Foods",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(),
          ),
        ],
        backgroundColor: Colors.brown.shade300,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FanCarouselImageSlider.sliderType1(
                imagesLink: [
                  "https://cdn.dummyjson.com/recipe-images/1.webp",
                  "https://cdn.dummyjson.com/recipe-images/2.webp",
                  "https://cdn.dummyjson.com/recipe-images/3.webp",
                  "https://cdn.dummyjson.com/recipe-images/4.webp",
                  "https://cdn.dummyjson.com/recipe-images/5.webp",
                  "https://cdn.dummyjson.com/recipe-images/6.webp",
                  "https://cdn.dummyjson.com/recipe-images/7.webp",
                  "https://cdn.dummyjson.com/recipe-images/8.webp",
                  "https://cdn.dummyjson.com/recipe-images/9.webp",
                  "https://cdn.dummyjson.com/recipe-images/10.webp",
                ],
                isAssets: false,
                autoPlay: true,
                sliderHeight: 400,
                showIndicator: true,
              ),
              Column(
                children: allRecipies
                    .map(
                      (e) => Padding(
                        padding: EdgeInsets.all(7),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('detail_page', arguments: e);
                          },
                          child: Container(
                            height: s.height * 0.28,
                            width: s.width * 10,
                            decoration: BoxDecoration(
                              color: Colors.brown.shade300,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(150),
                                topRight: Radius.circular(150),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e['name'],
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Total Time ${e['prepTimeMinutes'] + e['cookTimeMinutes']}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w200,
                                            color: Colors.black87),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "persons ${e['servings']}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w200,
                                            color: Colors.black87),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Meal Type ${e['mealType']}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w200,
                                            color: Colors.black87),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "This Recipe is ${e['difficulty']}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w200,
                                            color: Colors.black87),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          if (!fav.contains(e)) {
                                            fav.add(e);
                                          }
                                        },
                                        icon: Icon(
                                          Icons.favorite_outline,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Expanded(
                                    child: Container(
                                      width: s.width * 0.5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.brown.shade300,
                                        image: DecorationImage(
                                          image: NetworkImage(e['image']),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
