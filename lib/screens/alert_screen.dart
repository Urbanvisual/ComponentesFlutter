import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: const Column(mainAxisSize: MainAxisSize.min, children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              )
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false, //cerrar el dialogo desde la sombra
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            title: const Text('Titulo'),
            content: const Column(mainAxisSize: MainAxisSize.min, children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              //  style: ElevatedButton.styleFrom(
              //      backgroundColor: Colors.indigo,
              //      shape: const StadiumBorder(),
              //      elevation: 0),

              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
              ),
              onPressed: () => !Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIos(context))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
