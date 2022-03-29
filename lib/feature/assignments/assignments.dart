import 'package:flutter/material.dart';

import '../../assignments/assignmentdetails.dart';
import '../drawer/drawer.dart';

class Assignments extends StatefulWidget {
  const Assignments({Key? key}) : super(key: key);

  @override
  _AssignmentsState createState() => _AssignmentsState();
}

class _AssignmentsState extends State<Assignments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Assignments'),
        elevation: 0.0,
      ),
      drawer: const MainDrawer(),
      body: FutureBuilder(builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemBuilder: (_, index) {
              return Container(
                decoration: BoxDecoration(
                  color: const Color(0xff0129ba),
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: const LinearGradient(
                    colors: [Color(0xff1e63da), Color(0xff0129ba)],
                    begin: Alignment.centerRight,
                    end: Alignment(-1.0, -1.0),
                  ),
                ),
                margin: const EdgeInsets.all(5.0),
                child: ListTile(
                  title: const Text(
                    " ",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AssignmentDetails()),
                    );
                  },
                ),
              );
            },
          );
        }
      }),
    );
  }
}
