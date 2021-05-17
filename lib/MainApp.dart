import 'package:flutter/material.dart';
import 'package:tesflutter/ChatScreen.dart';
import 'package:tesflutter/HomeScreen.dart';


class MainApp extends StatefulWidget {
  final String data;
  final String item;

  MainApp({
    Key key, this.data , this.item
  }):super(key:key );

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
 
  
  int _selectedIndex = 0;
  final _layoutPage =[
   HomeScreen(),
   ChatScreen(),
  ];
 void _onTabItem(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(  
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text("Chat")
          ),
         
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}