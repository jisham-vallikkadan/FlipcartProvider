import 'package:flipcartclone/homepage.dart';
import 'package:flipcartclone/providerclass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cartpage.dart';

class Appbaractions extends StatefulWidget {
  const Appbaractions({Key? key}) : super(key: key);

  @override
  State<Appbaractions> createState() => _AppbaractionsState();
}

class _AppbaractionsState extends State<Appbaractions> {
  @override
  Widget build(BuildContext context) {
    var Cartitem=context.watch<FlipProvider>().Cartitem;
    var  Purchase = context.watch<FlipProvider>().Purchase;

    return Row(
      children: [
        // IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        Text("${Purchase.length}"),
        IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
        }, icon: Icon(Icons.mic)),
        Stack(
          children: [
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cartpage(),));
            }, icon: Icon(Icons.shopping_cart,size: 40,)),Cartitem.length==0?
           SizedBox(): Positioned(right: 15,top: 12,
                child: Center(child: Text('${Cartitem.length}',style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),)))

          ],
        )

      ],
    );
  }
}
