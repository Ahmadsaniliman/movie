import 'package:flutter/material.dart';
import 'package:movieapp/constriants.dart';
import 'package:movieapp/views/home/category.dart';
import 'package:movieapp/views/home/genre.dart';
import 'package:movieapp/views/home/movieCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              padding: EdgeInsets.all(KdefaultPadding),
              onPressed: () {
                print('Side View');
              },
              icon: Icon(
                Icons.align_horizontal_left,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                padding: EdgeInsets.all(KdefaultPadding),
                onPressed: () {
                  print('Search here');
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
        ),
        body: Column(
          children: [
            Genre(),
            Category(),
            MovieCard(),
          ],
        ));
  }
}
