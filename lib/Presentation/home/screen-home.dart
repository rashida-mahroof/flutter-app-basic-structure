import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/app-bar-widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar:const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Home',)),
      body: ListView(
        children:[ 
          Text('home screen'),
          const CupertinoSearchTextField(
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.close),
            style: TextStyle(color: Colors.white),
          ),
          Container(
              width: size.width,
              height: size.height,
              color: Colors.white,
              child: Stack(alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: size.width * .35,
                ),
                imagewidget(size: size, img: 'https://cdn.pixabay.com/photo/2013/10/09/02/27/lake-192990__340.jpg', angle: -20, margin: EdgeInsets.only(right: 70),),
                imagewidget(size: size, img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg', angle: 30,margin: EdgeInsets.only(left: 70)),
                imagewidget(size: size, img: 'https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg', angle: 0,margin: EdgeInsets.only(right: 0)),
              ],
              ),
          )
          ]));
  }
}

class imagewidget extends StatelessWidget {
  const imagewidget({
    Key? key,
    required this.size,
    required this.img,
    required this.angle,
    required this.margin
  }) : super(key: key);

  final Size size;
  final String img;
  final int angle;
  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi/180,
      child: Container(
        height: size.width * .5,
        width: size.width * .5,
       margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
           color: Color.fromARGB(255, 0, 0, 0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(img))
         
         ),
      ),
    );
  }
}