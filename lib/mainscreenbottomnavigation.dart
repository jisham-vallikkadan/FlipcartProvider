import 'package:flipcartclone/accountpage.dart';
import 'package:flutter/material.dart';

import 'cartpage.dart';
import 'catergorypage.dart';
import 'homepage.dart';
import 'laptopcollection.dart';
import 'mobilecollections.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _selectedIndex = 0;


  List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    Categorypage(),
    MyAccontpage(),
      Cartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
    label: 'Home',
    // backgroundColor: Colors.black
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.category_outlined),
    label: 'Categories',
    // backgroundColor: Colors.black
    ),

    BottomNavigationBarItem(
    icon: Icon(Icons.account_circle_outlined),
    label: 'Accounts',
    // backgroundColor: Colors.black
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart_outlined),
    label: 'Cart',
    // backgroundColor: Colors.black
    )
    ],
    currentIndex: _selectedIndex,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.blue,
          onTap: (index){
            setState(() {
              _selectedIndex=index;
              // botomnaviagtion(index);
            });
},
        ),
      body:
      _widgetOptions.elementAt(_selectedIndex),
      // Column(
      //   children: [
      //     Homepage(),
      //   ],
      // )
    );
  }
}
