import 'package:flutter/material.dart';
import 'package:movieapp/constriants.dart';

class MoviePosters extends StatelessWidget {
  final List<String> posters;
  const MoviePosters({Key? key, required this.posters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KdefaultPadding / 2),
      child: Container(
        height: 150,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, counter) => ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(posters[counter]))),
                  ),
                ),
            separatorBuilder: (context, counter) => SizedBox(width: 10.0),
            itemCount: posters.length),
      ),
    );
  }
}
