import 'package:flutter/material.dart';
import 'package:guardian_plus/screens/features/assignments/assignments.dart';
import 'package:guardian_plus/screens/features/calender/calendar.dart';
import 'package:guardian_plus/screens/features/home/home.dart';
import 'package:guardian_plus/screens/features/login/login.dart';
import 'package:guardian_plus/screens/features/notices/notices.dart';
import 'package:guardian_plus/screens/features/profile/profile.dart';
import 'package:guardian_plus/screens/features/progress/progress.dart';
import 'package:guardian_plus/screens/features/weeklyroutine/weeklyroutine.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Color(0xff0129ba),
              ),
            ),
            accountName: Text("${'displayName'}"),
            accountEmail: Text("${'email'}"),
            onDetailsPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ListTile(
            title: Text('Home'),
            trailing: Icon(Icons.home),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            title: Text('Weekly Routine'),
            trailing: Icon(Icons.schedule),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WeeklyRoutine()));
            },
          ),
          ListTile(
            title: Text('Assignments'),
            trailing: Icon(Icons.assignment),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Assignments()));
            },
          ),
          ListTile(
            title: Text('Calendar'),
            trailing: Icon(Icons.date_range),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Calendar()));
            },
          ),
          ListTile(
            title: Text('Notices'),
            trailing: Icon(Icons.assessment),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Notices()));
            },
          ),
          ListTile(
            title: Text('Progress'),
            trailing: Icon(Icons.grade),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Progress()));
            },
          ),
          ListTile(
            title: Text('Feedbacks'),
            trailing: Icon(Icons.feedback),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Logout'),
            trailing: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Mylogin()));
            },
          ),
        ],
      ),
    );
  }
}
