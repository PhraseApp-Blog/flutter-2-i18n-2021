import 'package:flutter/material.dart';
import 'package:flutter_i18n_2021/screens/settings.dart';

class HeroList extends StatelessWidget {
  final String title;

  HeroList({this.title = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Open settings',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Settings();
                }),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Text('Heroes page'),
      ),
    );
  }
}
