import 'package:flutter/material.dart';
import 'package:movieapp/constriants.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> category = [
      'Action',
      'Animation',
      'Comedy',
      'Crime',
      'Drama',
      'Horror',
    ];
    return Container(
        // margin: EdgeInsets.symmetric(vertical: KdefaultPadding / 2),
        height: 36.0,
        child: ListView.builder(
            itemCount: category.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, counter) => CategoryCard(
                  category: category[counter],
                )));
  }
}

class CategoryCard extends StatelessWidget {
  final String category;
  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KdefaultPadding / 2),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: KdefaultPadding / 4,
          horizontal: KdefaultPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.black26,
            width: 2.0,
          ),
        ),
        child: Text(category),
      ),
    );
  }
}
