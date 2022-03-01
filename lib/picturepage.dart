import 'package:flutter/material.dart';
import 'package:hero_example/images.dart';
import 'package:get/get.dart';

class PicturePage extends StatelessWidget {
  int index = 0;
  PicturePage(int i){
    index = i;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Picture Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
          child:Center(
              child: Hero(
                  tag: imagesList[index].name,
                  child: Image.asset(
                    imagesList[index].path,
                    fit: BoxFit.fill,
                  )
      )))
    );
  }
}
