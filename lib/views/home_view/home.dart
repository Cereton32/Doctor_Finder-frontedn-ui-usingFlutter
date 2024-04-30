import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/views/Singup_view/settingView.dart';
import 'package:untitled/views/categoryview.dart';
import 'package:untitled/views/home_view/homeView.dart';
import 'package:untitled/views/login_view/login_view.dart';

class homenav extends StatefulWidget{
 const homenav({super.key});

  @override
  State<homenav> createState() => _homenavState();
}

class _homenavState extends State<homenav> {
  int selectedindex=0;
  List ScreenList=[
    const Homepage(),
    categoryView(),
    loginView(),
    settingView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: CupertinoColors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        onTap: (value){
          setState(() {
            selectedindex=value;
          });
        },
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'person'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')
        ],
      ),
    );
  }
}