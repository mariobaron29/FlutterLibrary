import 'package:flutter/material.dart';

class BackPage extends StatefulWidget {
  @override
  _BackPageState createState() => _BackPageState();
}

class _BackPageState extends State<BackPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Back page"),
          leading: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              }),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: RaisedButton(
              child: Text("Oprima aquí para cerrar"),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
      ),
    );
  }
}
