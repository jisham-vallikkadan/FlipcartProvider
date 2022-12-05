import 'package:flipcartclone/appbaractions.dart';
import 'package:flipcartclone/widgets/purchasepage.dart';
import 'package:flipcartclone/widgets/repeateditems.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'models/categorymodel.dart';

class laptoppage extends StatefulWidget {
  const laptoppage({Key? key}) : super(key: key);

  @override
  State<laptoppage> createState() => _laptoppageState();
}

class _laptoppageState extends State<laptoppage> {
  List<Griditem> laptopitems = <Griditem>[
    Griditem(
        gridid: 6,
        gridcount: 1,
        griditemimage: "images/laptopimages/lap2.jpg",
        griditemdiscriotion:
            'acer Aspire 7 Ryzen 5 Hexa Core AMD R5-5500U - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) A715-42G/ A715-42G-R2NE Gaming Laptop  (15.6 inch, Black, 2.15 kg)',
        griditemname: 'Asus',
        griditemprice: 3400,
        griditemsizestatus: false,
        lapdisplaysize: 15.9,
        lapweight: 1.8),
    Griditem(
        griditemimage: "images/laptopimages/lap3.jpg",
        griditemdiscriotion:
            'acer Aspire 7 Ryzen 5 Hexa Core AMD R5-5500U - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) A715-42G/ A715-42G-R2NE Gaming Laptop  (15.6 inch, Black, 2.15 kg)',
        griditemprice: 545000,
        lapdisplaysize: 15.9,
        lapweight: 1,
        gridid: 7,
        gridcount: 0,
        griditemsizestatus: false,
        griditemname: 'hp'),
    Griditem(
        griditemimage: 'images/laptopimages/lap5.jpg',
        griditemdiscriotion:
            'APPLE MacBook Air M1 - (16 GB/512 GB SSD/Mac OS Big Sur) Z124J006KD  (13.3 inch, Silver, 1.29 Kg)',
        griditemprice: 89000,
        lapdisplaysize: 12.4,
        lapweight: 2.1,
        griditemname: 'Apple',
        griditemsizestatus: false,
        gridcount: 1,
        gridid: 8),
    Griditem(
  griditemimage: 'images/laptopimages/lap4.jpg',
  griditemdiscriotion:
  'ASUS VivoBook 14 (2022) Ryzen 3 Dual Core AMD R3-3250U - (8 GB/256 GB SSD/Windows 11 Home) M515DA-BR322WS Thin and Light Laptop  (15.6 inch, Transparent Silver, 1.80 kg, With MS Office)',

  griditemprice: 28999,
  lapdisplaysize: 15.3,
  lapweight: 4,
  gridid: 9,
  gridcount: 3,
  griditemsizestatus: false,
  griditemname: 'Asus'
  ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laptops'),
        backgroundColor: Color(0xff2974f1),
        actions: [Appbaractions()],
      ),
      body: Column(
        children: [
          Filterbuttons(),
          SizedBox(
            height: 4,
          ),
          // Expanded(
          //   child: Container(
          //     child: ListView(
          //       children: [
          //         Laptops(lapclik: (){
          //           Navigator.push(context, MaterialPageRoute(builder: (context) => Purchasepage(
          //             procount: 1,
          //               prodictid: 12,productimage: 'images/laptopimages/lap2.jpg', productname: 'Acer', Productdis:       'acer Aspire 7 Ryzen 5 Hexa Core AMD R5-5500U - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) A715-42G/ A715-42G-R2NE Gaming Laptop  (15.6 inch, Black, 2.15 kg)', productprice: 34000),));
          //
          //         },
          //             lapimage: "images/laptopimages/lap2.jpg",
          //             lapdetails:
          //                 'acer Aspire 7 Ryzen 5 Hexa Core AMD R5-5500U - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) A715-42G/ A715-42G-R2NE Gaming Laptop  (15.6 inch, Black, 2.15 kg)',
          //             lapprize: 34000,
          //             lapdisplaysize: 15.9,
          //             lapweight: 1.8),
          //         Laptops(lapclik: (){
          //           Navigator.push(context, MaterialPageRoute(builder: (context) => Purchasepage(
          //               procount: 1,prodictid: 13,productimage: 'images/laptopimages/lap3.jpg', productname: 'Acer', Productdis:       'acer Aspire 7 Core i5 10th Gen - (8 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) A715-75G-50TA/ A715-75G-41G/ A715-75G-52AA Gaming Laptop  (15.6 inch, Black, 2.15 Kg)', productprice: 54400),));
          //
          //         },
          //             lapimage: 'images/laptopimages/lap3.jpg',
          //             lapdetails:
          //                 'acer Aspire 7 Core i5 10th Gen - (8 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) A715-75G-50TA/ A715-75G-41G/ A715-75G-52AA Gaming Laptop  (15.6 inch, Black, 2.15 Kg)',
          //
          //             lapprize: 54400,
          //             lapdisplaysize: 15,
          //             lapweight: 5.7),
          //         Laptops(lapclik: (){
          //           Navigator.push(context, MaterialPageRoute(builder: (context) => Purchasepage(
          //               procount: 1,prodictid: 14,productimage: 'images/laptopimages/lap4.jpg', productname: 'ASUS', Productdis:       'ASUS VivoBook 14 (2022) Ryzen 3 Dual Core AMD R3-3250U - (8 GB/256 GB SSD/Windows 11 Home) M515DA-BR322WS Thin and Light Laptop  (15.6 inch, Transparent Silver, 1.80 kg, With MS Office)', productprice: 28999),));
          //
          //         },
          //             lapimage: 'images/laptopimages/lap4.jpg',
          //             lapdetails:
          //                 'ASUS VivoBook 14 (2022) Ryzen 3 Dual Core AMD R3-3250U - (8 GB/256 GB SSD/Windows 11 Home) M515DA-BR322WS Thin and Light Laptop  (15.6 inch, Transparent Silver, 1.80 kg, With MS Office)',
          //
          //             lapprize: 28999,
          //             lapdisplaysize: 15.3,
          //             lapweight: 4),
          //         Laptops(lapclik: (){
          //           Navigator.push(context, MaterialPageRoute(builder: (context) => Purchasepage(procount: 1,
          //               prodictid: 15,productimage: 'images/laptopimages/lap5.jpg', productname: 'macbook', Productdis:        'APPLE MacBook Air M1 - (16 GB/512 GB SSD/Mac OS Big Sur) Z124J006KD  (13.3 inch, Silver, 1.29 Kg)', productprice: 8900),));
          //
          //         },
          //             lapimage: 'images/laptopimages/lap5.jpg',
          //             lapdetails:
          //                 'APPLE MacBook Air M1 - (16 GB/512 GB SSD/Mac OS Big Sur) Z124J006KD  (13.3 inch, Silver, 1.29 Kg)',
          //             lapprize: 89000,
          //             lapdisplaysize: 12.4,
          //             lapweight: 2.1),
          //         Center(child: CircularProgressIndicator()),
          //       ],
          //     ),
          //   ),
          // )

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                var Laptopitems = laptopitems[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Purchasepage(
                              productimage: Laptopitems.griditemimage,
                              productname: Laptopitems.griditemname,
                              Productdis: Laptopitems.griditemdiscriotion,
                              productprice: Laptopitems.griditemprice,
                              prodictid: Laptopitems.gridid,
                              procount: Laptopitems.gridcount),
                        ));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 240,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 180,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 120,
                                height: 120,
                                color: Colors.white,
                                child: Image(
                                  image: AssetImage(Laptopitems.griditemimage),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Laptopitems.griditemdiscriotion,
                                          maxLines: 3,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3),
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.green,
                                                size: 20,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3),
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.green,
                                                size: 20,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 3),
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.green,
                                                size: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '₹${Laptopitems.griditemprice}',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              '16% off',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          'Free delivery',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        Text(
                                          'Up to ₹18,100 Off on Exchange',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        Text(
                                          'Bank Offer',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Card(
                                        child: Container(
                                          child: Text(
                                              '${Laptopitems.lapdisplaysize} inch Full HD LED  Display'),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.black12,
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Card(
                                        child: Container(
                                          child: Text(
                                              '${Laptopitems.lapweight} kg'),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.black12,
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Card(
                                        child: Container(
                                          child: Text('No optical disk drive'),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.black12,
                                          )),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: laptopitems.length,
            ),
          )
        ],
      ),
    );
  }
}

class Laptops extends StatelessWidget {
  String lapimage;
  String lapdetails;
  int lapprize;
  double lapdisplaysize;
  double lapweight;
  void Function() lapclik;
  // const Laptops({Key? key}) : super(key: key);
  Laptops(
      {required this.lapimage,
      required this.lapdetails,
      required this.lapprize,
      required this.lapdisplaysize,
      required this.lapweight,
      required this.lapclik});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: lapclik,
      child: Container(
        width: double.infinity,
        height: 240,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 120,
                    height: 120,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage(this.lapimage),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              this.lapdetails,
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹${this.lapprize}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  '16% off',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Free delivery',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 13),
                            ),
                            Text(
                              'Up to ₹18,100 Off on Exchange',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 13),
                            ),
                            Text(
                              'Bank Offer',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Card(
                            child: Container(
                              child: Text(
                                  '${this.lapdisplaysize} inch Full HD LED  Display'),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.black12,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            child: Container(
                              child: Text('${this.lapweight} kg'),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.black12,
                              )),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            child: Container(
                              child: Text('No optical disk drive'),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.black12,
                              )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
