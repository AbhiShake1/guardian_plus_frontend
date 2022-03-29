import 'package:flutter/material.dart';
import 'package:guardian_plus/feature/drawer/drawer.dart';

class Progress extends StatefulWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Progress'),
          elevation: 0.0,
        ),
        drawer: const MainDrawer(),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: const <Widget>[],
        ));
  }
}
