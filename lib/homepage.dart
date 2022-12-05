import 'package:flipcartclone/accountpage.dart';
import 'package:flipcartclone/bagcollections.dart';
import 'package:flipcartclone/cartpage.dart';
import 'package:flipcartclone/providerclass.dart';
import 'package:flipcartclone/widgets/purchasepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'laptopcollection.dart';
import 'mobilecollections.dart';
import 'models/categorymodel.dart';
import 'shoescolection.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget statusicons(
    String name,
    String image,
  ) {
    return Container(
      height: double.infinity,
      width: 80,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(
              image,
            ),
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 160,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2974f1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('images/flipkart.jpeg'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Flipkart',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: 160,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('images/grocery.jpg'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Grocery',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.mic,
                            color: Colors.black12,
                            size: 30,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black12,
                            size: 30,
                          ),
                          hintText: 'Search for Product'),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 150,
              width: double.infinity,
              child: Carousel(
                images: [
                  AssetImage('images/imageclouser/imagecarousel1.jpeg'),
                  AssetImage('images/imageclouser/imagecarousel2.jpeg'),
                  AssetImage('images/imageclouser/imagecarousel3.jpeg'),
                  AssetImage('images/imageclouser/imagecarousel4.jpeg'),
                  AssetImage('images/imageclouser/imagecarousel5.jpeg'),
                  AssetImage('images/imageclouser/imagecarousel6.jpeg'),
                ],
                dotColor: Colors.grey,
                dotBgColor: Colors.transparent,
                dotSize: 5,
                dotSpacing: 15,
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 85,
            color: Colors.red,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  statusicons('Live', 'images/live.jpg'),
                  statusicons('Super Coin', 'images/Supercoins.jpg'),
                  statusicons('Coupons', 'images/Coupons.png'),
                  statusicons('credits', 'images/card.jpg'),
                  statusicons('Whats new', 'images/whastnew.jpg'),
                  statusicons('Feed', 'images/live.jpg'),
                  statusicons('Camer', 'images/Supercoins.jpg'),
                  statusicons('games', 'images/Coupons.png'),
                  statusicons('Fire Drops', 'images/card.jpg'),
                  statusicons('Plus', 'images/whastnew.jpg'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Midlesection(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Recently Viewed ',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          CategorySection(),
          Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}

class Midlesection extends StatefulWidget {
  const Midlesection({Key? key}) : super(key: key);

  @override
  State<Midlesection> createState() => _MidlesectionState();
}

class _MidlesectionState extends State<Midlesection> {
  Widget items(
    String image,
    String name,
    int price,
    void Function() clik,
  ) {
    return GestureDetector(
      onTap: clik,
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7), color: Colors.white),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 70,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(45)),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            ),
            Container(
                child: Expanded(
                    child: Text(
              'From ₹$price',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            )))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          items('images/realme.jpg', 'realme c35', 1199, () {
// Navigator.push(context, MaterialPageRoute(builder: (context) => Purchasepage(productimage: 'images/mobilcollection/mobile1.jpg', productname: 'realme c35', Productdis: '', productprice: 1199),));
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mobilecollection(),
                ));
          }),
          items('images/bud.jpg', 'Mivi Doupods', 899, () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Purchasepage(
                    procount: 1,
                    prodictid: 101,
                      productimage: 'images/bud1.jpg',
                      productname: 'MIVI Doupode',
                      Productdis: '',
                      productprice: 899),
                ));
          }),
          items(
            'images/fastrack.jpg',
            'fastarck',
            399,
            () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Purchasepage(
                      procount: 1,
                      prodictid: 102,
                        productimage: 'images/watch.jpg',
                        productname: 'fastrack',
                        Productdis: '',
                        productprice: 399),
                  ));
            },
          )
        ],
      ),
    );
  }
}

class CategorySection extends StatefulWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  Widget build(BuildContext context) {
    List<Recentitems> Recentlyviewd = <Recentitems>[
      Recentitems(
          recntname: "Shoes",
          recentimage: 'images/shoesimages/4.jpg',
          tap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Collections(),
                ));
          }),
      Recentitems(recntname: 'Laptop', recentimage: 'images/laptop.jpg', tap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => laptoppage(),
            ));
      }),
      Recentitems(recntname: 'bag', recentimage: 'images/bag.jpg', tap:(){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Bagcolections(),
            ));
      }),
      Recentitems(recntname: 'home-appliances', recentimage: 'images/home-appliances.jpg', tap: (){}),
      Recentitems(recntname: 'Watch', recentimage: 'images/watch.jpg', tap: (){}),
      Recentitems(recntname: 'Mobiles', recentimage: 'images/mobilcollection/mobile1.jpg', tap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Mobilecollection(),));
      }),

    ];
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: GridView.builder(physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 1 / 1.3,
            mainAxisSpacing: 10),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var recenttlyviewd = Recentlyviewd[index];
          return GestureDetector(
            onTap: recenttlyviewd.tap,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    color: Colors.green,
                    child: Image(
                      image: AssetImage(recenttlyviewd.recentimage),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    recenttlyviewd.recntname,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: Recentlyviewd.length,
      ),
    );
  }
}
