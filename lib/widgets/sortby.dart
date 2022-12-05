import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flipcartclone/shoescolection.dart';

import '../providerclass.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({Key? key}) : super(key: key);

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  @override
  Widget build(BuildContext context) {
    var radionumber = context.watch<FlipProvider>().radionumber;

    var sort = context.watch<FlipProvider>().sort;
    return Column(
      children: [
        ListTile(
          title: Text('SORT BY'),
        ),
        RadioListTile(
          value: 3,
          groupValue:
              Provider.of<FlipProvider>(context, listen: false).radionumber,
          onChanged: (val) {
            Provider.of<FlipProvider>(context, listen: false).Radiolisttile(3);
          },
          title: Text('Price-- Low to hight'),
        ),
        RadioListTile(
          value: 4,
          groupValue:
              Provider.of<FlipProvider>(context, listen: false).radionumber,
          onChanged: (val) {
            Provider.of<FlipProvider>(context, listen: false).Radiolisttile(4);
          },
          title: Text('Price--Hight to Low'),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 150,
          height: 50,
          color: Colors.orange,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Apply',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}

class Pricecheckbox extends StatefulWidget {
  const Pricecheckbox({Key? key}) : super(key: key);

  @override
  State<Pricecheckbox> createState() => _PricecheckboxState();
}

class _PricecheckboxState extends State<Pricecheckbox> {
  @override
  Widget build(BuildContext context) {
    var isChecked = Provider.of<FlipProvider>(context, listen: false);
    var pricheckbox = context.watch<FlipProvider>().pricheckbox;

    return Column(
      children: [
        Row(
          children: [
            Checkbox(
                value: isChecked.pricheckbox[0],
                onChanged: (val) {
                  isChecked.pricechekboc(0, val);
                }),
            Text('Rs.500 and Below'),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: isChecked.pricheckbox[1],
                onChanged: (val) {
                  // isChecked.pricheckbox[1]=val!;
                  isChecked.pricechekboc(1, val);
                }),
            Text('Rs.501- Rs.1000'),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: isChecked.pricheckbox[2],
                onChanged: (val) {
                  isChecked.pricechekboc(2, val);
                }),
            Text('Rs.1001- Rs.1500'),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: isChecked.pricheckbox[3],
                onChanged: (val) {
                  isChecked.pricechekboc(3, val);
                }),
            Text('Rs.1501- Rs.2000'),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: isChecked.pricheckbox[4],
                onChanged: (val) {
                  isChecked.pricechekboc(4, val);
                }),
            Text('Rs.2001 and Above'),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 150,
          height: 50,
          color: Colors.orange,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Apply',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}

class BrandCheckbox extends StatefulWidget {
  const BrandCheckbox({Key? key}) : super(key: key);

  @override
  State<BrandCheckbox> createState() => _BrandCheckboxState();
}

class _BrandCheckboxState extends State<BrandCheckbox> {
  @override
  Widget build(BuildContext context) {
    var brandchekbox = context.watch<FlipProvider>().brandchekbox;
    var ischekbrandbox = Provider.of<FlipProvider>(context, listen: false);
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.zero)),
              prefixIcon: Icon(
                Icons.search,
                size: 35,
              ),
              hintText: 'Search Brand'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Checkbox(
                value: ischekbrandbox.brandchekbox[0],
                onChanged: (val) {
                  ischekbrandbox.brandchekboc(0, val);
                }),
            Text(
              'Nike',
              style: TextStyle(fontSize: 15),
            ),
            Checkbox(
                value: ischekbrandbox.brandchekbox[1],
                onChanged: (val) {
                  ischekbrandbox.brandchekboc(1, val);
                }),
            Text(
              'Adidas',
              style: TextStyle(fontSize: 15),
            ),
            Checkbox(
                value: ischekbrandbox.brandchekbox[2],
                onChanged: (val) {
                  ischekbrandbox.brandchekboc(2, val);
                }),
            Text(
              'Bata',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Checkbox(
                value: ischekbrandbox.brandchekbox[3],
                onChanged: (val) {
                  ischekbrandbox.brandchekboc(3, val);
                }),
            Text(
              'Asus',
              style: TextStyle(fontSize: 15),
            ),
            Checkbox(
                value: ischekbrandbox.brandchekbox[4],
                onChanged: (val) {
                  ischekbrandbox.brandchekboc(4, val);
                }),
            Text(
              'Hp',
              style: TextStyle(fontSize: 15),
            ),
            Checkbox(
                value: ischekbrandbox.brandchekbox[5],
                onChanged: (val) {
                  ischekbrandbox.brandchekboc(5, val);
                }),
            Text(
              'Mac',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Checkbox(
                value: ischekbrandbox.brandchekbox[6],
                onChanged: (val) {
                  ischekbrandbox.brandchekboc(6, val);
                }),
            Text(
              'fastrack',
              style: TextStyle(fontSize: 15),
            ),
            Checkbox(
                value: ischekbrandbox.brandchekbox[7],
                onChanged: (val) {
                  ischekbrandbox.brandchekboc(7, val);
                }),
            Text(
              'Tissot',
              style: TextStyle(fontSize: 15),
            ),
            Checkbox(
                value: ischekbrandbox.brandchekbox[8],
                onChanged: (val) {
                  ischekbrandbox.brandchekboc(8, val);
                }),
            Text(
              'Cartier',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 150,
          height: 50,
          color: Colors.orange,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Apply',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
