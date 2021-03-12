import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement_provider/AddItemNotifire.dart';
import 'package:statemanagement_provider/ShopNameNotifire.dart';
import 'HomePage.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AdditemNotifire>(create: (context) {
          return AdditemNotifire();
        },),
        ChangeNotifierProvider<ShopnameNotifire>(create: (context) {
          return ShopnameNotifire();
        },)
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
            primarySwatch: Colors.purple
        ),
        home: HomePage(),
      ),

    );

  }
}
