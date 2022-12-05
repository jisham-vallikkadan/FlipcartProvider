// import 'package:flutter/material.dart';
//
//
// class Cartitems extends StatefulWidget {
//
//   ItemsInCart ICR;
//   // const Cartitems({Key? key}) : super(key: key);
//       Cartitems({
//
// required this.ICR
// });
//
//   @override
//   State<Cartitems> createState() => _CartitemsState();
// }
//
// class _CartitemsState extends State<Cartitems> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         width: double.infinity,
//         color: Colors.white,
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(4),
//                       width: 120,
//                       height: 120,
//                       color: Colors.white,
//                       child:
//                       Image(image: AssetImage(widget.ICR.itemimage)),
//                     ),
//                     Container(
//                       width: 120,
//                       height: 25,
//                       child: Center(
//                         child: Text('Quati:1'),
//                       ),
//                       decoration: BoxDecoration(
//                           border: Border.all(),
//                           color: Colors.white),
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: Container(
//                     color: Colors.white,
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             widget.ICR.itemname,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             widget.ICR.itemdetails,
//                             maxLines: 3,
//                             style:
//                             TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.green,
//                               ),
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.green,
//                               ),
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.green,
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 '₹${widget.ICR.itemprice}',
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 '30% off',
//                                 style: TextStyle(
//                                     color: Colors.green,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                         ]),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width / 2,
//                   height: 35,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(width: 0),
//                     // borderRadius: BorderRadius.circular(20)
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         onTap: (){
//                           setState(() {
//                             Citem.remove(context);
//                           });
//                         },
//                         child: Icon(
//                           Icons.delete,
//                           color: Colors.black26,
//                         ),
//                       ),
//                       Text(
//                         'Remove',
//                         style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black54),
//                       )
//                     ],
//                   ),
//                 ), Expanded(
//                   child: Container(
//                     height: 35,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(width: 0),
//
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.thumb_up_alt_rounded,
//                           color: Colors.black26,
//                         ),
//                         Text(
//                           'Buy this now',
//                           style: TextStyle(
//                               fontSize: 17,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.black54),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
// class ItemsInCart{
//   String itemname;
//   String itemdetails;
//   String itemimage;
//   int itemprice;
//
//   ItemsInCart({
//     required this.itemname,
//     required this.itemprice,
//     required this.itemdetails,
//     required this.itemimage,
// });
// }
//
// List<ItemsInCart> Citem=[];