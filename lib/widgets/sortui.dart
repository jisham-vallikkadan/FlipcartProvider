// import 'package:flipcartclone/widgets/purchasepage.dart';
// import 'package:flipcartclone/widgets/repeateditems.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../appbaractions.dart';
// import '../providerclass.dart';
//
// class Sortby extends StatefulWidget {
//   const Sortby({Key? key}) : super(key: key);
//
//   @override
//   State<Sortby> createState() => _SortbyState();
// }
//
// class _SortbyState extends State<Sortby> {
//   @override
//   Widget build(BuildContext context) {
//     var sort=context.watch<FlipProvider>().sort;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shoes'),
//         backgroundColor: Color(0xff2974f1),
//         actions: [Appbaractions()],
//       ),
//       body: Column(
//         children: [
//           Filterbuttons(),
//           SizedBox(
//             height: 4,
//           ),
//           Expanded(
//               child: GridView.builder(
//                 // physics: AlwaysScrollableScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   childAspectRatio: 1 / 1.7,
//                   crossAxisCount: 2,
//                 ),
//                 itemBuilder: (context, index) {
//                   var sortitem = sort[index];
//                   return GestureDetector(
//                     onTap: () {
//
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => Purchasepage(
//                               procount: sortitem.gridcount,
//                               prodictid:sortitem.gridid,
//                               productimage: sortitem.griditemimage,
//                               productname: sortitem.griditemname,
//                               Productdis: sortitem.griditemdiscriotion,
//                               productprice: sortitem.griditemprice,
//                             ),
//
//                           ));
//                       // Purchase.add(Griditem(griditemimage: Shoeseitems.griditemimage, griditemname:  Shoeseitems.griditemname, griditemdiscriotion: Shoeseitems.griditemdiscriotion, griditemprice: Shoeseitems.griditemprice, griditemsizestatus: false));
//                     },
//                     child: Container(
//                       color: Colors.white,
//                       child: Column(
//                         children: [
//                           Stack(
//                             children: [
//                               Container(
//                                   width: double.infinity,
//                                   height: 180,
//                                   color: Colors.grey,
//                                   child: Image(
//                                     image: AssetImage(sortitem.griditemimage),
//                                     fit: BoxFit.cover,
//                                   )),
//
//                             ],
//                           ),
//                           Expanded(
//                             child: SingleChildScrollView(
//                               child: Container(
//                                 color: Colors.white,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(left: 10),
//                                   child: Column(
//                                     children: [
//                                       Row(
//                                         children: [
//                                           Text(
//                                             sortitem.griditemname,
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                         ],
//                                       ),
//                                       Row(
//                                         children: [
//                                           Expanded(
//                                               child: Text(
//                                                 sortitem.griditemdiscriotion,
//                                                 style: TextStyle(
//                                                     fontSize: 12,
//                                                     color: Colors.black38),
//                                               )),
//                                         ],
//                                       ),
//                                       Row(
//                                         children: [
//                                           Expanded(
//                                               child: Text(
//                                                 ' ₹${sortitem.griditemprice}',
//                                                 style: TextStyle(
//                                                     fontWeight: FontWeight.bold),
//                                               )),
//                                         ],
//                                       ),
//                                       sortitem.griditemsizestatus == true
//                                           ? Row(
//                                         children: [
//                                           Expanded(
//                                               child: Text(
//                                                 ' Size 6, 8, 9, 10',
//                                                 style: TextStyle(
//                                                     fontWeight: FontWeight.bold),
//                                               )),
//                                         ],
//                                       )
//                                           : SizedBox(),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//                 itemCount: sort.length,
//               )),
//         ],
//       ),
//     );
//   }
// }
