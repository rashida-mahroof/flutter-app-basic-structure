
import 'package:flutter/material.dart';


class ScreenAllNotes extends StatelessWidget {
  const ScreenAllNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
      mainAxisSpacing: 8,
      crossAxisSpacing: 6,
      childAspectRatio: 1/1.3,
      shrinkWrap: true,
      children: 
        List.generate(10, (index) {
          return Container(
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image:const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://onlinejpgtools.com/images/examples-onlinejpgtools/butterfly.jpg'))
            ),
          );
        })
      
      
      ));
  }
}