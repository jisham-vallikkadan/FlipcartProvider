import 'package:flutter/material.dart';

import 'models/categorymodel.dart';

class FlipProvider with ChangeNotifier {
  final List<Griditem> _Cartitem = [];

  List<Griditem> get Cartitem => _Cartitem;

  final List<Griditem> _Purchase = [];

  List<Griditem> get Purchase => _Purchase;

  void addtocart(Griditem griditem) {
    _Cartitem.add(griditem);
    notifyListeners();
  }

  void removefromcart(Griditem griditem) {
    _Cartitem.remove(griditem);
    notifyListeners();
  }

  void addquantity(int griditem) {
    griditem++;
    notifyListeners();
  }

  void decresquantity(Griditem griditem) {
    griditem.gridcount--;
    notifyListeners();
  }

  void countincremnert(Griditem griditem) {
    if (_Cartitem.contains(griditem.gridcount)) {
      griditem.gridcount++;
    } else {
      addtocart(griditem);
    }
    notifyListeners();
  }

  void addquantityfromcart(Griditem griditem) {
    griditem.gridcount++;
    notifyListeners();
  }

  void countincremernt(Griditem griditem) {
    griditem.gridcount++;

    notifyListeners();
  }

  int pricemultiply(Griditem griditem) {
    int price = griditem.griditemprice * griditem.gridcount;
    notifyListeners();
    return price;
  }

// int Number=0;
//  int? get number=>Number;
//
//  void radio(int radionumber){
//     Number=radionumber;
//     notifyListeners();
//  }

  int Radionumber = 0;
  int get radionumber => Radionumber;

  void Radiolisttile(int radionumber) {
    Radionumber = radionumber;
    notifyListeners();
  }

  var _pricecheckbok = [false, false, false, false, false];
  get pricheckbox => _pricecheckbok;

  void pricechekboc(int num, bool? value) {
    _pricecheckbok[num] = value!;
    notifyListeners();
  }

  var _Brandchekbox = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  get brandchekbox => _Brandchekbox;

  void brandchekboc(int num, bool? val) {
    _Brandchekbox[num] = val!;
    notifyListeners();
  }

  List<Griditem> _Sort = <Griditem>[];

  List get sort => _Sort;

  void sortbyadd(Griditem griditem) {
    _Sort.add(griditem);
    notifyListeners();
  }
}
