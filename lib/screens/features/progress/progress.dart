import 'package:flutter/material.dart';
import 'package:guardian_plus/screens/features/drawer/drawer.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Progress'),
          elevation: 0.0,
        ),
        drawer: MainDrawer(),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[],
        ));
  }
}
