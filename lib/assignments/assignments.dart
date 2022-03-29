import 'package:flutter/material.dart';
import 'package:guardian_plus/assignments/assignmentdetails.dart';
import 'package:guardian_plus/screens/features/drawer/drawer.dart';

class Assignments extends StatefulWidget {
  @override
  _AssignmentsState createState() => _AssignmentsState();
}

class _AssignmentsState extends State<Assignments> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Assignments'),
        elevation: 0.0,
      ),
      drawer: MainDrawer(),
      body: Container(
        child: FutureBuilder(builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemBuilder: (_, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color(0xff0129ba),
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      colors: [Color(0xff1e63da), Color(0xff0129ba)],
                      begin: Alignment.centerRight,
                      end: Alignment(-1.0, -1.0),
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  child: ListTile(
                    title: Text(
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
      ),
    );
  }
}
