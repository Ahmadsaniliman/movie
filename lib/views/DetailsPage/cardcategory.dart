import 'package:flutter/material.dart';
import 'package:movieapp/constriants.dart';

class GenreCard2 extends StatelessWidget {
  const GenreCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genre = [
      'Action',
      'Drama',
      'Comedy',
      'Comedy',
      'Comedy',
      'Comedy',
      'Comedy',
      'Comedy',
      'Comedy'
    ];
    return Container(
      height: 36.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genre.length,
        itemBuilder: (context, counter) => CardCategory(
          genre: genre[counter],
        ),
      ),
    );
  }
}

class CardCategory extends StatelessWidget {
  final String genre;
  const CardCategory({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KdefaultPadding / 2),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: KdefaultPadding,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
              color: Colors.black26,
              width: 2.0,
            )),
        child: Text(genre),
      ),
    );
  }
}
