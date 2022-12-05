import 'dart:async';

import 'package:flipcartclone/homepage.dart';
import 'package:flutter/material.dart';

import 'mainscreenbottomnavigation.dart';

class Scpashscreen extends StatefulWidget {
  const Scpashscreen({Key? key}) : super(key: key);

  @override
  State<Scpashscreen> createState() => _ScpashscreenState();
}

class _ScpashscreenState extends State<Scpashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Mainscreen(),)),);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xff2974f1),
      body: Center(
        child: Image(image: AssetImage('images/flipkart.jpeg'),),
      ),
    );
  }
}
