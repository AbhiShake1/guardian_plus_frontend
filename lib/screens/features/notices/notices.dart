import 'package:flutter/material.dart';
import 'package:guardian_plus/screens/features/drawer/drawer.dart';
import 'package:guardian_plus/screens/features/notices/noticedetails.dart';

class Notices extends StatefulWidget {
  @override
  _NoticesState createState() => _NoticesState();
}

class _NoticesState extends State<Notices> {
  get _data => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Notices'),
        elevation: 0.0,
      ),
      drawer: MainDrawer(),
      body: Container(
        child: FutureBuilder(
            future: _data,
            builder: (_, snapshot) {
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
                          "",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NoticeDetails()),
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
