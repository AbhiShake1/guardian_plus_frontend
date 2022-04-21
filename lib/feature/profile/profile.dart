import 'package:flutter/material.dart';
import 'package:guardian_plus/core/preferences.dart';
import 'package:guardian_plus/feature/drawer/drawer.dart';
import 'package:guardian_plus/feature/drawer/name_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Profile extends ConsumerWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Profile'),
          elevation: 0.0,
        ),
        drawer: const MainDrawer(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(50.0)),
                child: FutureBuilder<String>(
                  future: Preferences.getString('image_url_key'),
                  builder: (_, snapshot) {
                    if (!snapshot.hasData) return const CircularProgressIndicator();
                    if (snapshot.data == null) {
                      return const CircularProgressIndicator();
                    }
                    return Image.network(
                      snapshot.data!,
                      width: 200.0,
                      height: 200.0,
                    );
                  },
                ),
              ),
              Stack(
                children: [
                  ListTile(
                    title: const Center(
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
                        ref
                            .watch(prefRef('uid_key'))
                            .maybeWhen(orElse: () => '', data: (d) => d),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: const Center(
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
                    ref
                        .watch(prefRef('address_key'))
                        .maybeWhen(orElse: () => '', data: (d) => d ?? ''),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Center(
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
                    ref
                        .watch(prefRef('guardian_key'))
                        .maybeWhen(orElse: () => '', data: (d) => d ?? ''),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text(
                    ref
                        .watch(prefRef('contact_key'))
                        .maybeWhen(orElse: () => '', data: (d) => d ?? ''),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                subtitle: const Center(
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
                children: [
                  const Text(
                    "Grade: ",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    ref
                        .watch(prefRef('grade_key'))
                        .maybeWhen(orElse: () => '', data: (d) => d ?? ''),
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  const Text(
                    'section',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                ],
              ),
            ],
          ),
        ));
  }
}
