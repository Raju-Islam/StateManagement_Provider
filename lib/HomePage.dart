import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement_provider/AddItemNotifire.dart';
import 'AddItemScreen.dart';
import 'package:statemanagement_provider/ShopNameNotifire.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

String title = "Home";

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) {
                    return AddItemScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.00),
        child: Column(
          children: <Widget>[
            Expanded(child: Consumer<AdditemNotifire>(
              builder: (context, AdditemNotifire, _) {
                return ListView.builder(
                  itemCount: AdditemNotifire.ItemList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text(
                        AdditemNotifire.ItemList[index].ItemName,
                        style: TextStyle(
                          fontSize: 20.00,color: Colors.black87,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            ),
         Consumer<ShopnameNotifire>(
          builder: (context, ShopnameNotifire,_) {
            return Text("Shop Name: ${ShopnameNotifire.shopname}");
          },
         )
          ],
        ),
      ),
    );
  }
}
