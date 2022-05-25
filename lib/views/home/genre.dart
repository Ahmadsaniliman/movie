import 'package:flutter/material.dart';
import 'package:movieapp/constriants.dart';

class Genre extends StatefulWidget {
  const Genre({Key? key}) : super(key: key);

  @override
  _GenreState createState() => _GenreState();
}

class _GenreState extends State<Genre> {
  int selectedOne = 0;
  List<String> genres = ['In Theater', 'Box Office', 'Coming Soon'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KdefaultPadding),
      child: Container(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, counter) => genreCard(context, counter),
        ),
      ),
    );
  }

  Widget genreCard(BuildContext context, int counter) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KdefaultPadding),
      child: GestureDetector(
        onTap: () {
          print(genres.elementAt(counter));
          setState(() {
            selectedOne = counter;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              genres[counter],
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: selectedOne == counter
                        ? KtextColor
                        : Colors.black.withOpacity(0.4),
                  ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: KdefaultPadding / 2),
              height: 6.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: selectedOne == counter
                    ? KsecondaryColor
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
