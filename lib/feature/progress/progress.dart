import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:guardian_plus/core/extensions/context_extensions.dart';
import 'package:guardian_plus/core/repositories/repository_providers.dart';
import 'package:guardian_plus/feature/drawer/drawer.dart';
import 'package:guardian_plus/feature/drawer/name_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num totalMarks = 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Progress'),
        elevation: 0.0,
      ),
      drawer: const MainDrawer(),
      body: FutureBuilder<String?>(
        future: context.read(progressRepositoryRef).getProgress(
              context
                  .read(prefRef('uid_key'))
                  .maybeWhen(orElse: () => '', data: (d) => d ?? ''),
            ),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final Map progresses = jsonDecode(snapshot.data!);
          return ListView(
            children: [
              ...List.generate(
                progresses.keys.length,
                (index) {
                  totalMarks += progresses.values.elementAt(index)?['marks'] ?? 0;
                  return Text(
                      '${progresses.keys.elementAt(index)}: ${progresses.values.elementAt(index)}');
                },
              ),
              Text('Final marks: ${totalMarks / progresses.keys.length}')
            ],
          );
        },
      ),
    );
  }
}
