import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animación"),
      ),
      body: Center(
        child: Hero(tag: 'dash', child: Image.asset('assets/images/dash.png')),
      ),
    );
  }
}
