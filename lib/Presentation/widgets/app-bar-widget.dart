import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_note/Application/Core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key,required this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        Spacer(),
        Icon(Icons.search,color: Colors.white,),
        kWidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.pink,
        ),
        kWidth
      ],
    );
  }
}

