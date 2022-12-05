import 'package:flipcartclone/homepage.dart';
import 'package:flipcartclone/providerclass.dart';
import 'package:flipcartclone/widgets/sortby.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'accountpage.dart';
import 'cartpage.dart';
import 'catergorypage.dart';
import 'mainscreenbottomnavigation.dart';
import 'mobilecollections.dart';

import 'splashscreen.dart';
import 'widgets/purchasepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => FlipProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scpashscreen(),
// home: button(),
      ),
    );


  }
}
