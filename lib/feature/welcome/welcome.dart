import 'package:flutter/material.dart';
import 'package:guardian_plus/feature/login/login.dart';

import 'package:guardian_plus/feature/signup/signup.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 125, top: 120),
              child: const Text(
                'Guardian +',
                style: TextStyle(
                    color: Colors.white, fontSize: 35, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.fromLTRB(80, 300, 30, 0),
              child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide()),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Mylogin()),
                  );
                },
                padding: const EdgeInsets.all(10.0),
                textColor: const Color(0xff4c505b),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.fromLTRB(80, 400, 30, 0),
              child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MySignup()),
                  );
                },
                padding: const EdgeInsets.all(10.0),
                textColor: const Color(0xff4c505b),
                child: const Text(
                  "Register",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
