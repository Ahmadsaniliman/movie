import 'package:flutter/material.dart';
import 'package:movieapp/views/DetailsPage/about.dart';
import 'package:movieapp/views/DetailsPage/cardcategory.dart';
import 'package:movieapp/views/DetailsPage/posterCard.dart';
import 'package:movieapp/views/DetailsPage/thumbnail.dart';
import 'package:movieapp/views/DetailsPage/titleCard.dart';

import 'package:movieapp/views/model/model.dart';

class DetailsPage extends StatelessWidget {
  final Movie movie;
  const DetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Thumbnail(movie: movie),
          TitleCard(movie: movie),
          GenreCard2(),
          About(movie: movie),
          MoviePosters(posters: movie.images),
        ],
      ),
    );
  }
}
