import 'package:flipcartclone/appbaractions.dart';
import 'package:flipcartclone/cartpage.dart';
import 'package:flipcartclone/homepage.dart';
import 'package:flipcartclone/models/categorymodel.dart';
import 'package:flipcartclone/widgets/cartitemclasspage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../accountpage.dart';
import '../providerclass.dart';

class Purchasepage extends StatelessWidget {
  String productimage;
  String productname;
  String Productdis;
  int productprice;
  int prodictid;
  int procount;
  // Griditem cp;

  Purchasepage({
    required this.productimage,
    required this.productname,
    required this.Productdis,
    required this.productprice,
    required this.prodictid,
    required this.procount,
    // required this.cp
  });
  List<Griditem> button = <Griditem>[];

  @override
  Widget build(BuildContext context) {
    var Cartitem = context.watch<FlipProvider>().Cartitem;
    var Purchase = context.watch<FlipProvider>().Purchase;

    List<Griditem> button = <Griditem>[
      Griditem(gridcount: procount,
          gridid: prodictid,
          griditemimage: productimage,
          griditemname: productname,
          griditemdiscriotion: Productdis,
          griditemprice: productprice,
          griditemsizestatus: false,
      lapweight: 0,
      lapdisplaysize: 0)
    ];
    button.add(Griditem(
        gridcount: procount,
        gridid: prodictid,
        griditemimage: productimage,
        griditemname: productname,
        griditemdiscriotion: Productdis,
        griditemprice: productprice,
        griditemsizestatus: false,
    lapdisplaysize: 0,
    lapweight: 0));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff2974f1),
        actions: [Appbaractions()],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 400,
                      color: Colors.red,
                      child: Image(
                        image: AssetImage(button[0].griditemimage),
                        fit: BoxFit.fill,
                      ),
                    ),
                    // Positioned(
                    //   right: 16,
                    //   top: 10,
                    //   child: Container(
                    //     width: 45,
                    //     height: 45,
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(50),
                    //     ),
                    //     child: Icon(
                    //       Icons.shopping_cart,
                    //       color: Colors.black12,
                    //     ),
                    //   ),
                    // ),
                    Positioned(
                      right: 16,
                      top: 50,
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Homepage(),
                                ));
                          },
                          child: Icon(
                            Icons.home_outlined,
                            color: Colors.black12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: double.infinity,
                  height: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Avilabel Colors:1',
                        style: TextStyle(color: Colors.black38),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.white,
                      child: Image(
                        image: AssetImage(button[0].griditemimage),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '${button[0].griditemname} :',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  'View more from ${button[0].griditemname}',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '${button[0].griditemdiscriotion}',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black38),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '₹${button[0].griditemprice}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 60,
                child: Row(
                  children: [
                    Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.white,
                      child: Center(
                          child: TextButton(
                        child: Text(
                          'ADD TO CART',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          // Purchase.add(Griditem(griditemimage: productimage, griditemname:  productname, griditemdiscriotion:Productdis , griditemprice: productprice, griditemsizestatus: false));
                          //
                          // if(!Cartitem.contains(button[0])){
                          //     Provider.of<FlipProvider>(context,listen: false).addtocart(button[0]);
                          //     print('a');
                          // }else{
                          //   Provider.of<FlipProvider>(context,listen: false).addquantity(button[0]);
                          //   print('b');
                          // }
                          // if(Cartitem.contains(button[0])){
                          //   Provider.of<FlipProvider>(context,listen: false).addtocart(button[0]);
                          //   print('c');
                          // }else{
                          //   Provider.of<FlipProvider>(context,listen: false).addquantity(button[0]);
                          //   print('d');
                          // }





                          if(Cartitem.contains(button[0])){
                            Provider.of<FlipProvider>(context,listen: false).addquantity(button[0].gridcount++);
                            print('a');
                          }else{
                            Provider.of<FlipProvider>(context,listen: false).addtocart(button[0]);
                            //Provider.of<FlipProvider>(context,listen: false).addquantity(button[0]);
                            print('b');
                          }
                          // if(Cartitem.contains(button[0])){
                          //   Provider.of<FlipProvider>(context,listen: false).addtocart(button[0]);
                          //   print('c');
                          // }else{
                          //   Provider.of<FlipProvider>(context,listen: false).addquantity(button[0]);
                          //   print('d');
                          // }

                        },
                      )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyAccontpage(),
                            ));
                      },
                      child: Container(
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.deepOrange,
                        child: Center(
                            child: Text(
                          'BY NOW',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}


