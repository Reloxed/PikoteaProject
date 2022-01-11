import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pikotea_project/utils/navigators.dart';

dynamic backDialog(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (builder) {
        return AlertDialog(
          content: SingleChildScrollView(
              child: ListBody(children: <Widget>[
            Center(
                child: Text(
              "¿Deseas volver a la pantalla principal?",
              textAlign: TextAlign.center,
            ))
          ])),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                navigateToHome(context);
              },
              child: Text("Volver"),
              style: ButtonStyle(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Quedarme"),
              style: ButtonStyle(),
            )
          ],
        );
      });
}
