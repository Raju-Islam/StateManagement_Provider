import 'package:flutter/material.dart';
class ShopnameNotifire extends ChangeNotifier{
  String shopname="";
  updateshopname(String shopname)async{
    this.shopname=shopname;
    notifyListeners();
  }

}