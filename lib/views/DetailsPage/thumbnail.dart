import 'package:flutter/material.dart';
import 'package:movieapp/views/model/model.dart';

class Thumbnail extends StatelessWidget {
  final Movie movie;
  const Thumbnail({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(50.0)),
              image: DecorationImage(
                image: AssetImage(movie.poster),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: BackButton(
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 100,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF12153D).withOpacity(0.2),
                      blurRadius: 50,
                      offset: Offset(0, 5),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: '${movie.imdbRatings} /',
                            ),
                            TextSpan(text: '10\n'),
                            TextSpan(text: '100,212'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Rate This'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 35.0,
                        width: 35.0,
                        color: Colors.green,
                        child: Text(
                          movie.metascore,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Text('MetaScore'),
                      Text('64 reviews'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
