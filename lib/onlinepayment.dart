import 'package:flipcartclone/homepage.dart';
import 'package:flipcartclone/mainscreenbottomnavigation.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

enum Onlinepayments { first, Netbanking, UPI, CreditCard, DebitCard, Wallets }

class Onlinepayment extends StatefulWidget {
  const Onlinepayment({Key? key}) : super(key: key);

  @override
  State<Onlinepayment> createState() => _OnlinepaymentState();
}

class _OnlinepaymentState extends State<Onlinepayment> {
  Onlinepayments? _onlinemodes = Onlinepayments.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Online payment'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RadioListTile(
              title: Text('Net banking'),
              value: Onlinepayments.Netbanking,
              groupValue: _onlinemodes,
              onChanged: (value) {
                setState(() {
                  _onlinemodes = value;
                });
              }),
          RadioListTile(
              title: Text(' UPI'),
              value: Onlinepayments.UPI,
              groupValue: _onlinemodes,
              onChanged: (value) {
                setState(() {
                  _onlinemodes = value;
                });
              }),
          RadioListTile(
              title: Text(' Credit Card'),
              value: Onlinepayments.CreditCard,
              groupValue: _onlinemodes,
              onChanged: (value) {
                setState(() {
                  _onlinemodes = value;
                });
              }),
          RadioListTile(
              title: Text(' DebitCard'),
              value: Onlinepayments.DebitCard,
              groupValue: _onlinemodes,
              onChanged: (value) {
                setState(() {
                  _onlinemodes = value;
                });
              }),
          RadioListTile(
              title: Text(' Wallets (PayTm / Freecharge) '),
              value: Onlinepayments.Wallets,
              groupValue: _onlinemodes,
              onChanged: (value) {
                setState(() {
                  _onlinemodes = value;
                });
              }),
          SizedBox(
            height: 24,
          ),
          _onlinemodes == Onlinepayments.first
              ? SizedBox()
              : Column(
                children: [
                  Container(
                    width: 300,
                    height: 60,
                    color: Colors.orange,
                    child: TextButton(
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      onPressed: () {
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
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 300,
                    height: 60,
                   decoration: BoxDecoration(
    border: Border.all(), color: Colors.white,
    ),
                    child: TextButton(
                      child: Text(
                        'cancel',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      onPressed: () {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Mainscreen(),));
                      },
                    ),
                  ),
                ],
              ),
        ],
      ),
    );
  }
}
