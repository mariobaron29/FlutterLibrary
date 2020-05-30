import 'package:flutter/material.dart';
import 'package:practica/pages/animation_page.dart';
import 'package:practica/pages/back_page.dart';
import 'package:practica/pages/blank_page.dart';
import 'package:practica/pages/characters_page.dart';
import 'package:practica/pages/finish_page.dart';
import 'package:practica/pages/information_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practica"),
      ),
      body: ListView(
        children: <Widget>[
          ExpansionTile(
            title: Text("Navigator"),
            children: <Widget>[
              _CustomListTile(
                title: "Ir a otra pantalla",
                subtitle: "Ir a otra pantalla y volver",
                leading: Icon(Icons.call_made),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BlankPage()));
                },
              ),
              _CustomListTile(
                title: "Ir a otra pantalla",
                subtitle: "Ir a otra pantalla y volver con información",
                leading: Icon(Icons.description),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              InformationPage())).then((result) => {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Información"),
                                content: Text(result),
                              );
                            })
                      });
                },
              ),
              _CustomListTile(
                title: "Ir a otra pantalla",
                subtitle:
                    "Ir a otra pantalla y volver oprimiendo back unicamente",
                leading: Icon(Icons.close),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BackPage()));
                },
              ),
              _CustomListTile(
                title: "Ir a otra pantalla",
                subtitle: "Ir a otra pantalla y volver con animación",
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset("assets/images/dash.png"),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BackPage()));
                },
              ),
              _CustomListTile(
                title: "Ir a otra pantalla",
                subtitle: "Ir a otra pantalla y con animación",
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Hero(
                      tag: 'dash',
                      child: Image.asset("assets/images/dash.png")),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => AnimationPage()));
                },
              ),
              _CustomListTile(
                title: "Ir a otra pantalla",
                subtitle: "Ir a otra pantalla y cerrar todo",
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.close),
                ),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => FinishPage()),
                      (route) => false);
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Async Dart"),
            children: <Widget>[
              _CustomListTile(
                title: "Personajes",
                subtitle: "Traer personajes de Harry Potter",
                leading: Icon(Icons.people),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => CharacterPage()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget leading;
  final GestureTapCallback onTap;

  const _CustomListTile(
      {Key key, this.title, this.subtitle, this.leading, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.title),
      leading: this.leading,
      subtitle: Text(this.subtitle),
      onTap: onTap,
    );
  }
}
