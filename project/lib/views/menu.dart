import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project/views/profile.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
   
  @override
   State<Menu> createState() => _Menus();
  
   }
  
  
  class _Menus extends  State<Menu> {
    int _selectedIndex = 0;
  
 static const TextStyle _options = TextStyle(fontSize: 18 ,fontWeight:  FontWeight.bold);
   
 static const List<Widget> _widgets =  <Widget>[

 
 Text('Home', style: _options,),
 Profile(),
 Text('Services', style: _options,),
 Text('Settings', style: _options,),
 
 ];
 
 
 void _onItemTapped(int index){
   setState(() {
  _selectedIndex = index;
   }
  );}
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 70, 202, 246),
        title: const Text('Easy Store'),
      ),
       body: Center(
        child : _widgets.elementAt(_selectedIndex),
        ),
         bottomNavigationBar: BottomNavigationBar(
          items:const  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:  Icon(Icons.home), 
              label: 'home',
              backgroundColor: Color.fromARGB(255, 109, 109, 239),
         ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person ),
              label: 'Profile',
              backgroundColor: Color.fromARGB(255, 126, 104, 248),         
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'services',
              backgroundColor: Colors.purple
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
              backgroundColor: Colors.purple
            ),
         ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 9, 9, 9),
          onTap: _onItemTapped,
         ),
     );
   }   
 }
  