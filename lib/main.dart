import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/preferences.dart';
import 'feature/home/home.dart';
import 'feature/login/login.dart';

late final String? email;
late final String? password;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  email = await Preferences.getString('uid_key');
  password = await Preferences.getString('password_key');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: (email != null && password != null) ? const Home() : const Mylogin(),
    );
  }
}
