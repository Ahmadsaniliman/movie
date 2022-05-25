import 'package:flutter/material.dart';
import 'package:movieapp/constriants.dart';
import 'package:movieapp/views/model/model.dart';

class TitleCard extends StatelessWidget {
  final Movie movie;
  const TitleCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KdefaultPadding),
      child: Container(
        // height: 100,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: KdefaultPadding / 2),
                  Row(
                    children: [
                      Text(movie.runtime),
                      SizedBox(width: KdefaultPadding / 2),
                      Text(movie.year),
                      SizedBox(width: KdefaultPadding / 2),
                      Text(movie.response),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 64,
                width: 64,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: KsecondaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: () {},
                    child: Icon(Icons.add))),
            // Container(
            //   alignment: Alignment.center,
            //   height: 64.0,
            //   width: 64.0,
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //   ),
            //   child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //           padding: EdgeInsets.all(10.0),
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(20.0))),
            //       onPressed: () {},
            //       child: Icon(Icons.add)),
            // ),
          ],
        ),
      ),
    );
  }
}
