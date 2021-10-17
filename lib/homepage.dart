import 'package:fludget/cupertinowidgets.dart';
import 'package:fludget/materialwidgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _selectedIndex=0;

PageController pageController=PageController();

void onTapped(int index){
  setState(() {
    _selectedIndex=index;
  });

  //To animate the between different pages chage the parameters of the page controller below
  pageController.animateToPage(index, duration:Duration(milliseconds: 100), curve:Curves.linear);
}

@override

Widget build(BuildContext context) {
  return Scaffold(


    body: PageView(
      controller:pageController,
      onPageChanged:(int index){
        setState(() {
          _selectedIndex=index;
        });

      },



      // Insert your Required Screens Botttom NavBAr
      children: [
        MaterialWidgets(),
        CupertinoWidgets(),
      ],
    ),

    //Bottom Navigation Bar

    bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Material Widgets'),
      BottomNavigationBarItem(icon:Icon(Icons.menu),label: 'Cupertino Widgets'),

    ],
      currentIndex: _selectedIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).shadowColor,
      onTap: onTapped,),
  );
}
}
