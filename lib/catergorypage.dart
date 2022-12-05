import 'package:flipcartclone/homepage.dart';
import 'package:flutter/material.dart';

class Categorypage extends StatelessWidget {
  const Categorypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorys'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1/1.1,
          children: [
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/offerzone.jpeg',cNAme: 'Offerzone'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/grocery.jpg',cNAme: 'Grocery'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/mobile2.jpg',cNAme: 'Mobile'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/fastion.jpg',cNAme: 'Fashion'),
            CartOneitem(cclik: (){},cImage: 'images/laptop.jpg',cNAme: 'Electronics'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/home.jpg',cNAme: 'Home'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/personalcare.jpg',cNAme: 'Personal Care'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/appliances.jpg',cNAme: 'Appliances'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/toys.jpg',cNAme: 'Toys'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/furniture.jpg',cNAme: 'Furniture'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/flight and hotels.png',cNAme: 'Flight & horels'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/Sports.jpg',cNAme: 'Sports'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/nutrition.jpg',cNAme: 'Nutrition & More'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/giftcard.jpg',cNAme: 'Gitcard'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/medicines.jpg',cNAme: 'Medicines'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/offerzone.jpeg',cNAme: 'Offerzone'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/mobile2.jpg',cNAme: 'Mobile'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/fastion.jpg',cNAme: 'Fashion'),
            CartOneitem(cclik: (){},cImage: 'images/laptop.jpg',cNAme: 'Electronics'),
            CartOneitem(cclik: (){},cImage: 'images/maincategoryimage/home.jpg',cNAme: 'Home'),

          ],
        ),
      ),
    );
  }
}

class CartOneitem extends StatelessWidget {
  void Function() cclik;
  String cNAme;
  String cImage;
   // CartOneitem({required this.cclik}) ;
  CartOneitem({
    required this.cclik,
    required this.cNAme,
    required this.cImage
});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.cclik,
      child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 37,
              backgroundImage:
                  AssetImage(this.cImage),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              this.cNAme,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            )
          ],
        ),

    );
  }
}
