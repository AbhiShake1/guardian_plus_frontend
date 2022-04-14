import 'package:flutter/material.dart';
import 'package:guardian_plus/feature/drawer/drawer.dart';
import 'package:guardian_plus/feature/notices/notices.dart';
import 'package:guardian_plus/feature/progress/progress.dart';
import 'package:guardian_plus/feature/weeklyroutine/weeklyroutine.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        elevation: 0.0,
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.27,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff0129ba), Color(0xff1e63da)],
              ),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(20.0, 50.0, 0.0, 0.0),
                  child: const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20.0, 90.0, 0.0, 0.0),
                  child: const Text(
                    'School Name Here',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 325.0, top: 55.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5, // changes position of shadow
                          ),
                        ],
                      ),
                      width: 50.0,
                      height: 50.0,
                      child: const Icon(
                        Icons.person,
                        size: 25.0,
                        color: Color(0xff1e63da),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Notices()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 200.0,
                      width: 175.0,
                      decoration: BoxDecoration(
                          color: const Color(0xff1e63da),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(children: <Widget>[
                              Opacity(
                                opacity: 0.3,
                                child: Container(
                                  height: 75.0,
                                  width: 75.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 13.0),
                                child: Icon(
                                  Icons.assessment,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                              ),
                            ]),
                            const Padding(
                              padding: EdgeInsets.only(top: 25.0, left: 32.5),
                              child: Text(
                                'Notices',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Progress()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 200.0,
                      width: 175.0,
                      decoration: BoxDecoration(
                          color: const Color(0xff731963),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(children: <Widget>[
                              Opacity(
                                opacity: 0.3,
                                child: Container(
                                  height: 75.0,
                                  width: 75.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 13.0),
                                child: Icon(
                                  Icons.grade,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                              ),
                            ]),
                            const Padding(
                              padding: EdgeInsets.only(top: 25.0, left: 22.5),
                              child: Text(
                                'Progress',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 200.0,
                      width: 175.0,
                      decoration: BoxDecoration(
                          color: const Color(0xffe55934),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(children: <Widget>[
                              Opacity(
                                opacity: 0.3,
                                child: Container(
                                  height: 75.0,
                                  width: 75.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 13.0),
                                child: Icon(
                                  Icons.feedback,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                              ),
                            ]),
                            const Padding(
                              padding: EdgeInsets.only(top: 25.0, left: 15.0),
                              child: Text(
                                'Feedbacks',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WeeklyRoutine()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 200.0,
                      width: 175.0,
                      decoration: BoxDecoration(
                          color: const Color(0xff1e63da),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(children: <Widget>[
                              Opacity(
                                opacity: 0.3,
                                child: Container(
                                  height: 75.0,
                                  width: 75.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 13.0, top: 13.0),
                                child: Icon(
                                  Icons.schedule,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                              ),
                            ]),
                            const Padding(
                              padding: EdgeInsets.only(top: 25.0, left: 25.0),
                              child: Text(
                                'Weekly Routine',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
