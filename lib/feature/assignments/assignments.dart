import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:guardian_plus/core/models/assessment_model/assessment_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../assignments/assignmentdetails.dart';
import '../../core/repositories/repository_providers.dart';
import '../drawer/drawer.dart';

class Assignments extends ConsumerWidget {
  const Assignments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(assessmentRepositoryRef).getAssessments();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Assignments'),
        elevation: 0.0,
      ),
      drawer: const MainDrawer(),
      body: FutureBuilder<List<AssessmentModel?>?>(
          future: _data,
          builder: (_, snapshot) {
            final List<AssessmentModel?> assessments = snapshot.data ?? [];
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: assessments.length,
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
                        assessments[index]?.subject ?? '',
                        style: const TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AssignmentDetails(model: assessments[index]!)),
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
