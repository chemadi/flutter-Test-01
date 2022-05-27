import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

infoDialog(
    {required BuildContext context,
    required String title,
    required String content}) {
  if (Platform.isIOS) {
    return showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              CupertinoDialogAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cerrar"))
            ],
          );
        });
  }

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cerrar"))
          ],
        );
      });
}
