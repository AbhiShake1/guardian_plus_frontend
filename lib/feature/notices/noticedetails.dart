import 'package:flutter/material.dart';
import 'package:guardian_plus/core/models/notice_model/notice_model.dart';

class NoticeDetails extends StatelessWidget {
  const NoticeDetails({Key? key, required this.model}) : super(key: key);

  final NoticeModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    model.title,
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    model.title,
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    model.endDate,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
