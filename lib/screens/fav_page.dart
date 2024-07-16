import 'package:appmania_recipe_app/utils/products.dart';
import 'package:flutter/material.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        title: const Text("Your Favourite Items"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: fav
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
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
                          fav.remove(e);
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.favorite,
                          size: 35,
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
