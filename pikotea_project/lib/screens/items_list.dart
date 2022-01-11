import 'package:flutter/material.dart';
import 'package:pikotea_project/statics/items.dart';
import 'package:pikotea_project/utils/dialogs.dart';
import 'package:pikotea_project/utils/navigators.dart';

/// This screen displays the items found on the static list.
class ItemsList extends StatelessWidget {
  static const String route = "/list";

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Material(
          child: Scaffold(
            key: _globalKey,
            appBar: AppBar(
              leading: BackButton(
                onPressed: () async {
                  await backDialog(context);
                },
              ),
              title: Text("¡Hola Pikotea!"),
            ),
            body: Container(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(20.0),
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                children: <Widget>[for (int i = 0; i < itemsMap.length; i++) gridItem(context, i)],
              ),
            ),
            endDrawer: Drawer(
              child: Center(child: Text("¡Hola! Soy un EndDrawer")),
            ),
          ),
        ),
        onWillPop: () async {
          if(_globalKey.currentState!.isEndDrawerOpen == true) {
            Navigator.pop(context);
            return false;
          } else {
            return await backDialog(context);
          }
        });
  }

  Widget gridItem(BuildContext context, int i) {
    return InkWell(
        onTap: () {
          navigateToItemDetails(context, i);
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(itemsMap.values.elementAt(i)),
              Text(
                itemsMap.keys.elementAt(i),
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
