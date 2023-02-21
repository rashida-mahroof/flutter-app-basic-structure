import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReelView extends StatelessWidget {
  const ReelView({Key? key,required this.index}) : super(key: key);
final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  [
              const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.volume_mute)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    
                    NewWidget(icon: Icon(Icons.add), title: 'add'),
                    NewWidget(icon: Icon(Icons.thumb_up), title: 'like'),
                    NewWidget(icon: Icon(Icons.comment), title: 'comments'),
                    NewWidget(icon: Icon(Icons.share), title: 'share'),
                ],)
            ],),
          ),
        )
      ],
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({Key? key,required this.icon,required this.title}) : super(key: key);
final Icon icon;
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: icon,
          ),
          Text(title)
        ],
      ),
    );
  }
}