import 'package:flipcartclone/appbaractions.dart';
import 'package:flipcartclone/widgets/repeateditems.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'models/categorymodel.dart';
import 'widgets/purchasepage.dart';

class Mobilecollection extends StatefulWidget {
  const Mobilecollection({Key? key}) : super(key: key);

  @override
  State<Mobilecollection> createState() => _MobilecollectionState();
}

class _MobilecollectionState extends State<Mobilecollection> {
  List<Griditem> mobileitems = <Griditem>[
    Griditem(
      griditemimage: 'images/mobilcollection/mobile1.jpg',
      griditemname: ' Samsung galaxy M53',
      griditemdiscriotion:
          'SAMSUNG M53 5G (Mystique Green, 128 GB)  (6 GB RAM)',
      griditemprice: 25999,
      griditemsizestatus: false,
      gridid: 16,
      gridcount: 1,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      griditemimage: 'images/mobilcollection/mobile2.jpg',
      griditemname: "Iphone 13",
      griditemdiscriotion: 'APPLE iPhone 13 (Midnight, 128 GB)',
      griditemprice: 65999,
      griditemsizestatus: false,
      gridcount: 1,
      gridid: 17,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      griditemimage: 'images/mobilcollection/mobile3.png',
      griditemname: "BlackBerry",
      griditemdiscriotion: 'BlackBerry 9780',
      griditemprice: 27990,
      griditemsizestatus: false,
      gridid: 18,
      gridcount: 1,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      griditemimage: 'images/mobilcollection/mobile4.png',
      griditemname: 'Honer',
      griditemdiscriotion:
          'Small 15 L Backpack Small 15 L Backpack Womens little kid kids Girls Sequins MIni Backpack for girls',
      griditemprice: 1599,
      griditemsizestatus: false,
      gridcount: 1,
      gridid: 19,
      lapdisplaysize: 0,
      lapweight: 0,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
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
              var Mobileitems = mobileitems[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Purchasepage(
                          procount: Mobileitems.gridcount,
                          prodictid: Mobileitems.gridid,
                          productimage: Mobileitems.griditemimage,
                          productname: Mobileitems.griditemname,
                          Productdis: Mobileitems.griditemdiscriotion,
                          productprice: Mobileitems.griditemprice,
                        ),
                      ));
                  // Purchase.add(Griditem(griditemimage: Shoeseitems.griditemimage, griditemname:  Shoeseitems.griditemname, griditemdiscriotion: Shoeseitems.griditemdiscriotion, griditemprice: Shoeseitems.griditemprice, griditemsizestatus: false));
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
                                image: AssetImage(Mobileitems.griditemimage),
                                fit: BoxFit.cover,
                              )),
                          // Positioned(
                          //     right: 10,
                          //     top: 10,
                          //     child: IconButton(
                          //       onPressed: () {
                          //         if (!Cartitem.contains(Shoeseitems)) {
                          //           Provider.of<FlipProvider>(context,
                          //                   listen: false)
                          //               .addtocart(Shoeseitems);
                          //           print('add');
                          //         } else {
                          //           Provider.of<FlipProvider>(context,
                          //                   listen: false)
                          //               .removecart(Shoeseitems);
                          //           print('remove');
                          //         }
                          //       },
                          //       icon: Icon(
                          //         Icons.favorite,
                          //         color: !Cartitem.contains(Shoeseitems)
                          //             ? Colors.white
                          //             : Colors.black,
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
                                        Mobileitems.griditemname,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                        Mobileitems.griditemdiscriotion,
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
                                        ' ₹${Mobileitems.griditemprice}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ],
                                  ),
                                  Mobileitems.griditemsizestatus == true
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
            itemCount: mobileitems.length,
          )),
        ],
      ),
    );
  }
}
