// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:guardian_plus/screens/features/welcome/welcome.dart';

class MySignup extends StatefulWidget {
  const MySignup({Key? key}) : super(key: key);

  @override
  _MySignupState createState() => _MySignupState();
}

class _MySignupState extends State<MySignup> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode confirmPasswordFocus = FocusNode();
  String fullname = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  String error = '';
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 100.0, 0.0, 0.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'ProximaNova',
                          fontSize: 80.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(300.0, 125.0, 0.0, 0.0),
                      child: Text(
                        '.',
                        style: TextStyle(
                          fontFamily: 'ProximaNova',
                          color: Colors.white,
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                child: Form(
                  key: _formKey,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          textCapitalization: TextCapitalization.characters,
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) =>
                              FocusScope.of(context).nextFocus(),
                          onChanged: (value) {
                            setState(() => fullname = value);
                          },
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            labelText: 'FULL NAME',
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: 'ProximaNova',
                              fontWeight: FontWeight.bold,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          textCapitalization: TextCapitalization.characters,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) =>
                              FocusScope.of(context).nextFocus(),
                          onChanged: (value) {
                            setState(() => email = value);
                          },
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            labelText: 'EMAIL',
                            labelStyle: TextStyle(
                              fontFamily: 'ProximaNova',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          /* validator: (value) => value.length < 8
                                    ? 'Password needs to be atleast 8 characters.'
                                    : null, */

                          onFieldSubmitted: (_) => FocusScope.of(context)
                              .requestFocus(confirmPasswordFocus),
                          onChanged: (value) {
                            setState(() => password = value);
                          },
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(
                              fontFamily: 'ProximaNova',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.white,
                            )),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          focusNode: confirmPasswordFocus,
                          textInputAction: TextInputAction.done,
                          onChanged: (value) {
                            setState(() => confirmPassword = value);
                          },
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          onFieldSubmitted: (_) =>
                              FocusScope.of(context).unfocus(),
                          decoration: InputDecoration(
                            labelText: 'CONFIRM PASSWORD',
                            labelStyle: TextStyle(
                              fontFamily: 'ProximaNova',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 40.0),
                        Container(
                          height: 60.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white,
                            elevation: 5.0,
                            child: GestureDetector(
                              onTap: () async {},
                              child: Center(
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'ProximaNova',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontFamily: 'ProximaNova',
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 5.0),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'ProximaNova',
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            error,
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'ProximaNova',
                                fontSize: 15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
