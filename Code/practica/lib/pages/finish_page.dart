import 'package:flutter/material.dart';

class FinishPage extends StatefulWidget {
  @override
  _FinishPageState createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animación"),
      ),
      body: Text('Finalizar App'),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pop(context);
      }),
    );
  }
}
