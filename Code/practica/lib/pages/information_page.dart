import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  var _textController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Información"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Digita un texto",
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                border: OutlineInputBorder()),
            controller: _textController,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pop(context, _textController.text);
      }),
    );
  }
}
