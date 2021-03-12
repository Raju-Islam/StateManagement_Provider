import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement_provider/AddItemNotifire.dart';
import 'package:statemanagement_provider/ShopNameNotifire.dart';

class AddItemScreen extends StatefulWidget {
  @override
  _AddItemScreenState createState() => _AddItemScreenState();
}

String title = "Add Item";
final String ButtonText = "Add Item";
final String ShopButton = "Add Shop";
final TextEditingController _TextController = new TextEditingController();
final TextEditingController _ShopTextController = new TextEditingController();

class _AddItemScreenState extends State<AddItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(25.00),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Enter Item Name"),
              controller: _TextController,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter shop name"),
              controller: _ShopTextController,
            ),
            SizedBox(
              height: 20.00,
            ),
            RaisedButton(
              child: Text(ButtonText),
              onPressed: () async {
                if (_TextController.text.isEmpty) {
                  return;
                } else {
                  await Provider.of<AdditemNotifire>(context, listen: false)
                      .addItem(_TextController.text);
                  Navigator.pop(context);
                }
              },
            ),
            SizedBox(
              height: 10.00,
            ),
            RaisedButton(
              child: Text(ShopButton),
              onPressed: () async {
                if (_ShopTextController.text.isEmpty) {
                  return;
                } else {
                  await Provider.of<ShopnameNotifire>(context, listen: false)
                      .updateshopname(_ShopTextController.text);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
