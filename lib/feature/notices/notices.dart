import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:guardian_plus/core/providers/assessment_provider/assessment_provider.dart';
import 'package:guardian_plus/core/providers/auth_provider/auth_provider.dart';
import 'package:guardian_plus/core/providers/auth_provider/repository_providers.dart';
import 'package:guardian_plus/core/repositories/repository_providers.dart';
import 'package:guardian_plus/feature/drawer/drawer.dart';
import 'package:guardian_plus/feature/notices/noticedetails.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Notices extends ConsumerWidget {
  const Notices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(assessmentRepositoryRef).getAssessments();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notices'),
        elevation: 0.0,
      ),
      drawer: const MainDrawer(),
      body: FutureBuilder<String?>(
          future: _data,
          builder: (_, snapshot) {
            final List notices = jsonDecode(snapshot.data ?? '[]');
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: notices.length,
                itemBuilder: (_, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff0129ba),
                      borderRadius: BorderRadius.circular(5.0),
                      gradient: const LinearGradient(
                        colors: [Color(0xff1e63da), Color(0xff0129ba)],
                        begin: Alignment.centerRight,
                        end: Alignment(-1.0, -1.0),
                      ),
                    ),
                    margin: const EdgeInsets.all(5.0),
                    child: ListTile(
                      title: Text(
                        notices[index].toString(),
                        style: const TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NoticeDetails()),
                        );
                      },
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}
