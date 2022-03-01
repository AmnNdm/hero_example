import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_example/picturepage.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/one', page: () => PicturePage(0)),]
    );
  }
}