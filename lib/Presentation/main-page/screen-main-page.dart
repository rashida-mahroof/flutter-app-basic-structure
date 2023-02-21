import 'package:flutter/material.dart';
import 'package:my_note/Presentation/NotesList/screen-notes.dart';
import 'package:my_note/Presentation/Search/screen-search.dart';
import 'package:my_note/Presentation/home/screen-home.dart';
import 'package:my_note/Presentation/main-page/widgets/bottom-nav.dart';
import 'package:my_note/Presentation/widgets/app-bar-widget.dart';

class ScreenMainPage extends StatelessWidget {
 const ScreenMainPage({Key? key}) : super(key: key);

  final Pages = const[
    ScreenSearch(),
    ScreenHome(),
    ScreenAllNotes()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (BuildContext context,int index,_){
          return Pages[index];
        }),
      ),
          bottomNavigationBar: BottomNavigation(),
          // floatingActionButton: FloatingButton(),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}