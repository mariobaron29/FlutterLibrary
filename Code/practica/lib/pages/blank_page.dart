import 'package:flutter/material.dart';

class BlankPage extends StatefulWidget {
  @override
  _BlankPageState createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina"),
      ),
      body: Center(
        child: Text("Hola soy una nueva pantalla"),
      ),
    );
  }
}
