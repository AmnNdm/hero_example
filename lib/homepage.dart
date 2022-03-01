import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_example/cat.dart';
import 'package:hero_example/images.dart';
import 'package:hero_example/picturepage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       Get.to(PicturePage());
      //     },
      //     child: Icon(Icons.arrow_right_outlined)),
      body: Center(
          child: TextButton(
        onPressed: () {
          Get.to(() => CatPage(), duration: const Duration(milliseconds: 750));
        },
        child: Hero(
          tag: 'cattag',
          child: const Material(
              type: MaterialType.transparency,
              child: Text('History',
                  style: TextStyle(fontSize: 15, color: Colors.blue))),
          flightShuttleBuilder: (
            BuildContext flightContext,
            Animation<double> animation,
            HeroFlightDirection flightDirection,
            BuildContext fromHeroContext,
            BuildContext toHeroContext,
          ) {
            return const Material(
              type: MaterialType.transparency,
              child: Text('History',
                  style: TextStyle(fontSize: 15, color: Colors.blue)),
            );
          },
        ),
      )
          //  GestureDetector(
          //   onTap: () {
          //     Get.to(() => CatPage(),
          //         duration: const Duration(milliseconds: 800));
          //   },
          //   child: Hero(
          //     tag: 'cattag',
          //     child: const Material(
          //         type: MaterialType.transparency,
          //         child: Text('History', style: TextStyle(fontSize: 15))),
          //     flightShuttleBuilder: (
          //       BuildContext flightContext,
          //       Animation<double> animation,
          //       HeroFlightDirection flightDirection,
          //       BuildContext fromHeroContext,
          //       BuildContext toHeroContext,
          //     ) {
          //       return Container(
          //         color: Colors.red,
          //       );
          //     },
          //   ),
          // ),

          // Container(

          //   padding: const EdgeInsets.all(8),
          //   child: ListView.builder(
          //       itemCount: imagesList.length,
          //       itemBuilder: (BuildContext context, index) {
          //         return Card(
          //           child: GestureDetector(
          //               onTap: () {
          //                 Get.to(() => PicturePage(index),
          //                     duration: const Duration(milliseconds: 800));
          //               },
          //               child: ListTile(
          //                 // Image.asset(
          //                 //   imagesList[index].path,
          //                 //   width: 80,
          //                 //   height: 100,
          //                 //   fit: BoxFit.fill,
          //                 // )
          //                 leading: Hero(
          //                     tag: imagesList[index].name,
          //                     child: Image.asset(
          //                       imagesList[index].path,
          //                       width: 80,
          //                       height: 100,
          //                       fit: BoxFit.fill,
          //                     )),
          //                 title: Text(imagesList[index].name),
          //                 contentPadding: EdgeInsets.all(10),
          //                 horizontalTitleGap: 30,
          //               )),
          //         );
          //       }),
          // ),
          ),
    );
  }
}
