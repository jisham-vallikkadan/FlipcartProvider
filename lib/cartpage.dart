import 'package:flipcartclone/widgets/cartitemclasspage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providerclass.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    var Cartitem = context.watch<FlipProvider>().Cartitem;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Cart'),
        actions: [
          IconButton(onPressed: (){

            for(int i=0;i<Cartitem.length;i++){
              print(Cartitem[i].gridid);
            }
          }, icon: Icon(Icons.ice_skating))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          var CT = Cartitem[index];

          // int price=CT.gridcount*CT.griditemprice;
          return Card(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(4),
                            width: 120,
                            height: 120,
                            color: Colors.white,
                            child: Image(image: AssetImage(CT.griditemimage)),
                          ),
                          // Container(
                          //   width: 120,
                          //   height: 25,
                          //   child: Center(
                          //     child: Text('Quati:${CT.gridid}'),
                          //   ),
                          //   decoration: BoxDecoration(
                          //       border: Border.all(),
                          //       color: Colors.white),
                          // ),
                          Row(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(52),
                                    border: Border.all()),
                                child: TextButton(
                                  onPressed: () {
                                    Provider.of<FlipProvider>(context,
                                            listen: false)
                                        .decresquantity(CT);
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('${CT.gridcount}'),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(52),
                                    border: Border.all()),
                                child: TextButton(
                                  onPressed: () {
                                    Provider.of<FlipProvider>(context,
                                            listen: false)
                                        .addquantityfromcart(CT);
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  CT.griditemname,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  CT.griditemdiscriotion,
                                  maxLines: 3,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '₹${Provider.of<FlipProvider>(context, listen: false).pricemultiply(CT)}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '30% off',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Provider.of<FlipProvider>(context, listen: false)
                              .removefromcart(CT);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 0),
                            // borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.delete,
                                color: Colors.black26,
                              ),
                              Text(
                                'Remove',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.thumb_up_alt_rounded,
                                color: Colors.black26,
                              ),
                              Text(
                                'Buy this now',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: Cartitem.length,
      ),
    );
  }
}
