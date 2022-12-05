import 'package:flipcartclone/models/categorymodel.dart';
import 'package:flipcartclone/providerclass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'appbaractions.dart';
import 'homepage.dart';
import 'shoescolection.dart';
import 'widgets/purchasepage.dart';
import 'widgets/repeateditems.dart';

class Bagcolections extends StatefulWidget {
  const Bagcolections({Key? key}) : super(key: key);

  @override
  State<Bagcolections> createState() => _BagcolectionsState();
}

class _BagcolectionsState extends State<Bagcolections> {
  List<Griditem> Bagitems = <Griditem>[
    Griditem(
      gridcount: 1,
      gridid: 10,
      griditemimage: 'images/bagimages/bag1.jpg',
      griditemname: 'Tribe Hype',
      griditemdiscriotion: 'Large 35 L Backpack VENUS_108',
      griditemprice: 1200,
      griditemsizestatus: false,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      gridcount: 1,
      gridid: 11,
      griditemimage: 'images/bagimages/bag2.jpg',
      griditemname: "Keywin",
      griditemdiscriotion:
          'Large 50 L Laptop Backpack Travel Bag Trekking Bag Mountaineering Bag Backpack for all purpose ',
      griditemprice: 799,
      griditemsizestatus: false,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      gridcount: 1,
      gridid: 12,
      griditemimage: 'images/bagimages/bag3.jpg',
      griditemname: "Isparro",
      griditemdiscriotion: 'Medium 30 L Backpack Neavy  (Blue, Grey)',
      griditemprice: 1400,
      griditemsizestatus: false,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      gridcount: 1,
      gridid: 13,
      griditemimage: 'images/bagimages/bag4.jpg',
      griditemname: 'WROGN',
      griditemdiscriotion:
          'Small 15 L Backpack Small 15 L Backpack Womens little kid kids Girls Sequins MIni Backpack for girls',
      griditemprice: 999,
      griditemsizestatus: false,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      gridcount: 1,
      gridid: 14,
      griditemimage: 'images/bagimages/bag1.jpg',
      griditemname: "Isparro",
      griditemdiscriotion:
          '41.5 L Laptop Backpack Spacy Freeride Unisex Bag with rain cover Ofc/School/College/BusinessA-41.5L  (Multicolor)',
      griditemprice: 1400,
      griditemsizestatus: false,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      gridcount: 1,
      gridid: 15,
      griditemimage: 'images/bag.jpg',
      griditemname: 'WROGN',
      griditemdiscriotion: 'Large 34 L Backpack FTY 25  (Black, Yellow)',
      griditemprice: 999,
      griditemsizestatus: false,
      lapdisplaysize: 0,
      lapweight: 0,
    )
  ];
  @override
  Widget build(BuildContext context) {
    var Cartitem = context.watch<FlipProvider>().Cartitem;

    return Scaffold(
      appBar: AppBar(
        title: Text('Bags'),
        backgroundColor: Color(0xff2974f1),
        actions: [Appbaractions()],
      ),
      body: Column(
        children: [
          Filterbuttons(),
          SizedBox(
            height: 4,
          ),
          Expanded(
              child: GridView.builder(
            // physics: AlwaysScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 1.7,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              var bagitems = Bagitems[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Purchasepage(
                          procount: bagitems.gridcount,
                          prodictid: bagitems.gridid,
                            productimage: bagitems.griditemimage,
                            productname: bagitems.griditemname,
                            Productdis: bagitems.griditemdiscriotion,
                            productprice: bagitems.griditemprice),
                      ));
                },
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: double.infinity,
                              height: 180,
                              color: Colors.grey,
                              child: Image(
                                image: AssetImage(bagitems.griditemimage),
                                fit: BoxFit.cover,
                              )),
                          // Positioned(
                          //     right: 10,
                          //     top: 10,
                          //     child: Container(
                          //       width: 45,
                          //       height: 45,
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(50),
                          //         border: Border.all(width: 0),
                          //       ),
                          //       child: GestureDetector(
                          //         onTap: () {
                          //           // Provider.of<FlipProvider>(context,listen: false).addtocart(bagitems);
                          //         },
                          //         child: Icon(
                          //           Icons.access_time_filled,
                          //           color: Colors.black12,
                          //         ),
                          //       ),
                          //     ))
                        ],
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        bagitems.griditemname,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                        bagitems.griditemdiscriotion,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black38),
                                      )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                        ' ₹${bagitems.griditemprice}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ],
                                  ),
                                  bagitems.griditemsizestatus == true
                                      ? Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              ' Size 6, 8, 9, 10',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ],
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: Bagitems.length,
          )),
        ],
      ),
    );
  }
}
