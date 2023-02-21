import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_note/Presentation/Search/reel-view.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) {
           return ReelView(index: index);
          }),
        )),
      
      );
  }
}