import 'package:flutter/material.dart';
import 'package:guardian_plus/screens/features/drawer/drawer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Profile'),
          elevation: 0.0,
        ),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50.0)),
                child: Image.network(
                  'photo',
                  width: 200.0,
                  height: 200.0,
                ),
              ),
              Stack(
                children: <Widget>[
                  ListTile(
                    title: Center(
                      child: Text(
                        'Name:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    subtitle: Center(
                      child: Text(
                        'name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Center(
                  child: Text(
                    'Address:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                subtitle: Center(
                  child: Text(
                    'address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text(
                    'Guardian Name:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                subtitle: Center(
                  child: Text(
                    'guardianname',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text(
                    'Contact Info:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                subtitle: Center(
                  child: Text(
                    'contact',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Grade: ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'class',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'section',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(width: 5.0),
                ],
              ),
            ],
          ),
        ));
  }
}
