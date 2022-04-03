import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:guardian_plus/core/repositories/repository_providers.dart';
import 'package:guardian_plus/feature/drawer/drawer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Progress'),
        elevation: 0.0,
      ),
      drawer: const MainDrawer(),
      body: FutureBuilder<String?>(
        future: ProviderScope.containerOf(context)
            .read(progressRepositoryRef)
            .getProgress('abhi'),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const CircularProgressIndicator();
          final Map progresses = jsonDecode(snapshot.data!);
          return ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              progresses.keys.length,
              (index) => Text(progresses[progresses.keys.elementAt(index)]),
            ),
          );
        },
      ),
    );
  }
}
