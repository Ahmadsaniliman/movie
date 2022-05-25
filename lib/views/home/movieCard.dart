import 'package:flutter/material.dart';
import 'package:movieapp/constriants.dart';
import 'package:movieapp/views/DetailsPage/detailsPage.dart';
import 'package:movieapp/views/model/model.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({
    Key? key,
  }) : super(key: key);

  @override
  _MovieCardState createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  late PageController _pageController;
  int initPage = 0;
  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initPage,
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: KdefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
            controller: _pageController,
            itemCount: movies.length,
            itemBuilder: (context, counter) => MovieCardd(
                  movie: movies[counter],
                )),
      ),
    );
  }
}

class MovieCardd extends StatelessWidget {
  final Movie movie;
  const MovieCardd({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(
                      movie: movie,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: KdefaultPadding,
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                    image: AssetImage(movie.poster),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: KdefaultPadding / 2),
              child: Text(
                movie.title,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ratings : '),
                Text(movie.imdbRatings),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
