// ignore_for_file: deprecated_member_use
import 'package:guardian_plus/core/extensions/extensions.dart';
import 'package:guardian_plus/core/preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/providers/auth_provider/auth_provider.dart';
import '../../core/providers/auth_provider/repository_providers.dart';
import '../home/home.dart';

class Mylogin extends HookWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 115, top: 140),
            child: const Text(
              'Guardian',
              style: TextStyle(
                color: Colors.black,
                fontSize: 45,
                fontFamily: 'ProximaNova',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 190, top: 190),
            child: const Text(
              '+',
              style: TextStyle(
                color: Colors.black,
                fontSize: 45,
                fontFamily: 'ProximaNova',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  right: 25,
                  left: 25),
              child: Column(children: [
                TextFormField(
                  controller: emailController,
                  style: const TextStyle(
                    fontFamily: 'ProximaNova',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontFamily: 'ProximaNova',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  controller: passwordController,
                  style: const TextStyle(
                    fontFamily: 'ProximaNova',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontFamily: 'ProximaNova',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      alignment: const Alignment(1.0, 0.0),
                      padding: const EdgeInsets.only(top: 15.0, left: 220),
                      child: InkWell(
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'ProximaNova',
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () async => await launch(
                            'https://guardianplus-production.up.railway.app/api=forgot_password/recover/'),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 60.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xff0129ba),
                    elevation: 5.0,
                    child: GestureDetector(
                      onTap: () async {
                        final user = await context.read(authRepositoryRef).login(
                              emailController.text,
                              passwordController.text,
                            );
                        if (user != null) {
                          await Preferences.setString(
                              'uid_key', emailController.text);
                          await Preferences.setString(
                              'password_key', passwordController.text);
                          await Preferences.setString(
                              'address_key', user.address ?? '');
                          await Preferences.setString(
                              'guardian_key', user.parent ?? '');
                          await Preferences.setString(
                              'image_url_key', user.imageUrl ?? '');
                          await Preferences.setString(
                              'contact_key', user.phoneNo?.toString() ?? '');
                          await Preferences.setString(
                              'school_key', user.school ?? '');
                          await Preferences.setString('grade_key', user.grade ?? '');
                          context.pushReplacement(const Home());
                        } else {
                          context.showToast(msg: 'Invalid credentials');
                        }
                      },
                      child: Consumer(
                        builder: (context, ref, child) => Center(
                          child: ref.watch(authRef).maybeWhen(
                                loading: () => const CircularProgressIndicator(),
                                orElse: () => const Text(
                                  'LOGIN',
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
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
