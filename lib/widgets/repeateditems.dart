import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:slide_popup_dialog_null_safety/slide_popup_dialog.dart'
    as slideDialog;

import '../providerclass.dart';
import 'sortby.dart';

class Filterbuttons extends StatefulWidget {
  const Filterbuttons({Key? key}) : super(key: key);

  @override
  State<Filterbuttons> createState() => _FilterbuttonsState();
}

class _FilterbuttonsState extends State<Filterbuttons> {
  // int? _valu = 0;
  // bool? isChecked = false;
  // bool? isChecked2 = false;
  // bool? isChecked3 = false;
  // bool? isChecked4 = false;
  // bool? isChecked5 = false;

  Widget fbuttons(
    String text,
    IconData fIcon,
  ) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Colors.white,
          border: Border.all(color: Colors.black38)),
      width: 79,
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 12),
          ),
          Icon(fIcon),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 35,
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  slideDialog.showSlideDialog(
                    context: context,
                    child: Radiobutton(),
                    barrierColor: Colors.white.withOpacity(0.7),
                    pillColor: Colors.white,
                    backgroundColor: Colors.white,
                  );
                },
                child: fbuttons(
                  'Sort By',
                  Icons.arrow_drop_down,
                ),
              ),

              GestureDetector(
                onTap: () {
                  slideDialog.showSlideDialog(
                    context: context,
                    barrierColor: Colors.white.withOpacity(0.7),
                    pillColor: Colors.white,
                    backgroundColor: Colors.white,
                    child: Pricecheckbox(),
                  );
                },
                child: fbuttons(
                  'Price',
                  Icons.arrow_drop_down,
                ),
              ),

              GestureDetector(
                onTap: () {

                  slideDialog.showSlideDialog(
                      context: context,
                      barrierColor: Colors.white.withOpacity(0.7),
                      pillColor: Colors.white,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: BrandCheckbox(),
                      ));
                },
                child: fbuttons(
                  'Brand',
                  Icons.arrow_drop_down,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
