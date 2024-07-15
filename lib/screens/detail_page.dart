import 'package:appmania_recipe_app/utils/products.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> detail =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
          // title:Text(),
          ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: allRecipies
              .map(
                (e) => Container(),
              )
              .toList(),
        ),
      ),
    );
  }
}
