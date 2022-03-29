import 'package:flutter/material.dart';
import 'package:guardian_plus/feature/drawer/drawer.dart';

class WeeklyRoutine extends StatefulWidget {
  const WeeklyRoutine({Key? key}) : super(key: key);

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
          title: const Text('Weekly Routine'),
          elevation: 0.0,
        ),
        drawer: const MainDrawer(),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: const <Widget>[],
        ));
  }
}
