import 'package:flutter/material.dart';
import 'package:guardian_plus/screens/features/drawer/drawer.dart';

class Feedbacks extends StatefulWidget {
  @override
  _FeedbacksState createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  var taskcollections = Firestore.instance.collection('students');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Feedbacks"),
          elevation: 0.0,
        ),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff0129ba),
              borderRadius: BorderRadius.circular(5.0),
              gradient: LinearGradient(
                colors: [Color(0xff1e63da), Color(0xff0129ba)],
                begin: Alignment.centerRight,
                end: Alignment(-1.0, -1.0),
              ),
            ),
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Center(
                child: Text(
                  'title',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'feedback',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class Firestore {
  static var instance;
}
