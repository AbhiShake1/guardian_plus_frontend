import 'package:flutter/material.dart';
import 'package:guardian_plus/screens/features/drawer/drawer.dart';

class WeeklyRoutine extends StatefulWidget {
  @override
  _WeeklyRoutineState createState() => _WeeklyRoutineState();
}

class _WeeklyRoutineState extends State<WeeklyRoutine> {
  get routines => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Weekly Routine'),
          elevation: 0.0,
        ),
        drawer: MainDrawer(),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[],
        ));
  }
}
