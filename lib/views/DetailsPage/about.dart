import 'package:flutter/material.dart';
import 'package:movieapp/constriants.dart';
import 'package:movieapp/views/model/model.dart';

class About extends StatelessWidget {
  final Movie movie;
  const About({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: KdefaultPadding / 2, horizontal: KdefaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Plot Summary',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: 5.0),
          Text(movie.plot),
        ],
      ),
    );
  }
}
