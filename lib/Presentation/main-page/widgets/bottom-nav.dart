
import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (BuildContext context, int newIndex,_ ) { 
      return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: newIndex,
      onTap: (index){
        indexChangeNotifier.value = index;
      },
      elevation: 0,
      backgroundColor: Colors.grey.shade900,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),

      items:const [
         BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
          ),
       
          BottomNavigationBarItem(
          icon: Icon(Icons.notes),
          label: 'All notes'
          ),
      ] 
    );
     }, 
    
    
    );
  
  }
}