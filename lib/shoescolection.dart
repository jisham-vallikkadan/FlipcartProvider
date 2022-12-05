import 'package:flipcartclone/providerclass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'appbaractions.dart';
import 'models/categorymodel.dart';
import 'widgets/purchasepage.dart';
import 'widgets/repeateditems.dart';

class Collections extends StatefulWidget {
  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections>
{
  // const Collections({Key? key}) : super(key: key);
  List<Griditem> shoeitem = <Griditem>[
    Griditem(
      gridcount: 1,
      gridid: 1,
      griditemimage: 'images/shoesimages/1.jpg',
      griditemname: 'BERSACHE',
      griditemdiscriotion:
          'Bersache Sports Shoes For Women|Black For Running,Walking,gym and hiking Shoes Running Shoes For Men  (Black)',
      griditemprice: 999,
      griditemsizestatus: true,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      gridcount: 1,
      gridid: 2,
      griditemimage: 'images/shoesimages/2.jpg',
      griditemname: 'PUMA',
      griditemdiscriotion:
          'Trendy Sports Running Running Shoes For Men  (Blue, Orange)',
      griditemprice: 1999,
      griditemsizestatus: true,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      gridcount: 1,
      gridid: 3,
      griditemimage: 'images/shoesimages/3.jpg',
      griditemname: 'World Wear Footwear',
      griditemdiscriotion: 'Running Shoes For Men  (Black)',
      griditemprice: 799,
      griditemsizestatus: true,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
    Griditem(
      lapdisplaysize: 0,
      lapweight: 0,
      gridcount: 1,
      gridid: 4,
      griditemimage: 'images/shoesimages/4.jpg',
      griditemname: 'SCATCHITE',
      griditemdiscriotion:
          'Crystal-13 Black sky Sports Transparent Sole Technology For Men  (Black, Blue)',
      griditemprice: 615,
      griditemsizestatus: true,
    ),
    Griditem(
      gridcount: 1,
      gridid: 5,
      griditemimage: 'images/shoesimages/5.jpg',
      griditemname: 'PUMA',
      griditemdiscriotion:
          'Trendy Sports Running Running Shoes For Men  (Grey)',
      griditemprice: 999,
      griditemsizestatus: true,
      lapdisplaysize: 0,
      lapweight: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var Cartitem = context.watch<FlipProvider>().Cartitem;
    var Purchase = context.watch<FlipProvider>().Purchase;
    var sort=context.watch<FlipProvider>().sort;

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
              var Shoeseitems = shoeitem[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Purchasepage(
                          procount: Shoeseitems.gridcount,
                          prodictid:Shoeseitems.gridid,
                          productimage: Shoeseitems.griditemimage,
                          productname: Shoeseitems.griditemname,
                          Productdis: Shoeseitems.griditemdiscriotion,
                          productprice: Shoeseitems.griditemprice,
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
                                image: AssetImage(Shoeseitems.griditemimage),
                                fit: BoxFit.cover,
                              )),

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
                                        Shoeseitems.griditemname,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                        Shoeseitems.griditemdiscriotion,
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
                                        ' ₹${Shoeseitems.griditemprice}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ],
                                  ),
                                  Shoeseitems.griditemsizestatus == true
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
            itemCount: shoeitem.length,
          )),
        ],
      ),
    );
  }
}
