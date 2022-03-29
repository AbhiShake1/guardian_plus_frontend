import 'package:flutter/material.dart';
import 'package:guardian_plus/screens/features/calender/calendar.dart';
import 'package:guardian_plus/screens/features/home/home.dart';
import 'package:guardian_plus/screens/features/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Mylogin());
  }
}
