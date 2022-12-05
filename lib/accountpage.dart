import 'package:flipcartclone/homepage.dart';
import 'package:flutter/material.dart';

import 'mainscreenbottomnavigation.dart';
import 'onlinepayment.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

enum SingingCharacter { first ,Cashondelivery, Online }

class MyAccontpage extends StatefulWidget {
  const MyAccontpage({Key? key}) : super(key: key);

  @override
  State<MyAccontpage> createState() => _MyAccontpageState();
}

class _MyAccontpageState extends State<MyAccontpage> {
  SingingCharacter? _selectedmode = SingingCharacter.first;
  TextEditingController namecontroler=TextEditingController();
  TextEditingController addrescontroler= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Account'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                child: TextField(
                  controller: namecontroler,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: Icon(Icons.edit),
                      hintText: 'Name'),
                ),
              ),
              SizedBox(
                height: 4,
              ),

              Container(
                padding: EdgeInsets.only(left: 10),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: addrescontroler,
                  maxLines: 10,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.edit),
                      border: InputBorder.none, hintText: 'Enter Address'),

                ),


              ),
              SizedBox(height: 10,),
              Container(height: 35,
              width: 100,
              color: Colors.blue,
              child: TextButton(onPressed: (){
                setState(() {
                  if(namecontroler.text.isEmpty||addrescontroler.text.isEmpty){

                  }
                  else {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Mainscreen(),));
                  }
                });
              },child: Text('Save',style: TextStyle(color: Colors.black),)),),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Payment type',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              RadioListTile<SingingCharacter>(
                activeColor: Colors.red,
                title:  Text('Cash on delivery'),
                value: SingingCharacter.Cashondelivery,
                groupValue: _selectedmode,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _selectedmode = value;
                  });
                },
              ),
              RadioListTile<SingingCharacter>(

                title:  Text('Online'),
                value: SingingCharacter.Online,
                groupValue: _selectedmode,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _selectedmode = value;
                    print(_selectedmode);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Onlinepayment(),));
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
             _selectedmode==SingingCharacter.Cashondelivery? Column(
               children: [
                 Container(
                   width: 200,
                   height:60 ,
                   color: Colors.orange,
                   child: TextButton(
                     child: Text('Submit',style: TextStyle(color: Colors.black,fontSize: 20),),
                     onPressed: (){
                       Alert(
                         context: context,
                         type: AlertType.success,
                         title: 'Payment Succesfull',
                         desc: "",
                         buttons: [
                           DialogButton(
                             child: Text(
                               "Okay",
                               style:
                               TextStyle(color: Colors.white, fontSize: 20),
                             ),
                             onPressed: () {
                               Navigator.pushReplacement(
                                   context,
                                   MaterialPageRoute(
                                     builder: (context) => Mainscreen(),
                                   ));
                             },
                             width: 120,
                           )
                         ],
                       ).show();
                     },
                   ),
                 ),
                 SizedBox(height: 4,),
                 Container(
                   width: 200,
                   height:60 ,
                   color: Colors.white,
                   child: TextButton(
                     child: Text('Cancel',style: TextStyle(color: Colors.black,fontSize: 20),),
                     onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Mainscreen(),));
                     },
                   ),
                 ),
               ],
             ):SizedBox(),

            ],
          ),
        ),
      ),
    );
  }
}
