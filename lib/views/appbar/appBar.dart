import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
          onPressed: () {
            print('Leading');
          },
          icon: Icon(Icons.align_horizontal_left, color: Colors.black)),
      actions: [
        IconButton(
            onPressed: () {
              print('search here');
            },
            icon: Icon(Icons.search, color: Colors.black)),
      ],
    );
  }
}
