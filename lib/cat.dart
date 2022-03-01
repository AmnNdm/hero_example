import 'package:flutter/material.dart';

import 'images.dart';

class CatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Hero(
              tag: 'cattag',
              child: Text(
                'History',
                // softWrap: true,
              )),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
                child: Image.asset(
              imagesList[1].path,
              fit: BoxFit.fill,
            ))));
  }
}
