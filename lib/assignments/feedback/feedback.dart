import 'package:flutter/material.dart';

import '../../feature/drawer/drawer.dart';

class Feedbacks extends StatefulWidget {
  const Feedbacks({Key? key}) : super(key: key);

  @override
  _FeedbacksState createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Feedbacks"),
          elevation: 0.0,
        ),
        drawer: const MainDrawer(),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff0129ba),
              borderRadius: BorderRadius.circular(5.0),
              gradient: const LinearGradient(
                colors: [Color(0xff1e63da), Color(0xff0129ba)],
                begin: Alignment.centerRight,
                end: Alignment(-1.0, -1.0),
              ),
            ),
            margin: const EdgeInsets.all(8.0),
            child: const ListTile(
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
                padding: EdgeInsets.only(top: 10.0),
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
