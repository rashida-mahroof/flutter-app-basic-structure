import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_note/Application/Core/colors/colors.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: foregroundColor,
      foregroundColor: backgroundColor,
      onPressed: (){},
      child: Icon(Icons.add),
    
    );
  }
}