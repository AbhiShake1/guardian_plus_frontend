import 'package:flutter/material.dart';
import 'package:guardian_plus/core/extensions/extensions.dart';
import 'package:guardian_plus/core/repositories/repository_providers.dart';
import 'package:guardian_plus/feature/drawer/drawer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velocity_x/velocity_x.dart';

class FeedbackPage extends StatefulHookConsumerWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends ConsumerState<FeedbackPage> {
  List<bool> isTypeSelected = [false, false, false, true, true];
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final descriptionController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      drawer: const MainDrawer(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Please select the type of the feedback",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(
              height: 130.0,
            ),
            const SizedBox(height: 25.0),
            GestureDetector(
              child: buildCheckItem(
                title: "Login trouble",
                isSelected: isTypeSelected[0],
              ),
              onTap: () {
                setState(() {
                  isTypeSelected[0] = !isTypeSelected[0];
                });
              },
            ),
            GestureDetector(
              child: buildCheckItem(
                  title: "Phone number related", isSelected: isTypeSelected[1]),
              onTap: () {
                setState(() {
                  isTypeSelected[1] = !isTypeSelected[1];
                });
              },
            ),
            GestureDetector(
              child: buildCheckItem(
                  title: "Personal profile", isSelected: isTypeSelected[2]),
              onTap: () {
                setState(() {
                  isTypeSelected[2] = !isTypeSelected[2];
                });
              },
            ),
            GestureDetector(
              child: buildCheckItem(
                  title: "Other issues", isSelected: isTypeSelected[3]),
              onTap: () {
                setState(() {
                  isTypeSelected[3] = !isTypeSelected[3];
                });
              },
            ),
            GestureDetector(
              child: buildCheckItem(
                  title: "Suggestions", isSelected: isTypeSelected[4]),
              onTap: () {
                setState(() {
                  isTypeSelected[4] = !isTypeSelected[4];
                });
              },
            ),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                        fillColor: Colors.white60,
                        filled: true,
                        hintStyle:
                            const TextStyle(fontSize: 20.0, color: Colors.black),
                        hintText: "Please briefly describe the issue",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    maxLines: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 1.0,
                            color: Color(0xFFA6A6A6),
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFE5E5E5),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            "Upload screenshot (optional)",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 100, bottom: 10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(),
                      ),
                      onPressed: () async {
                        final result = await context
                            .read(feedbackRepositoryRef)
                            .postFeedback('title', descriptionController.text);
                        context.showToast(msg: result ? 'Successful' : 'Failed');
                      },
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildCheckItem({required String title, required bool isSelected}) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Icon(
            isSelected ? Icons.check_circle : Icons.circle,
            color: isSelected ? Colors.blue : Colors.grey,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.blue : Colors.grey),
          ),
        ],
      ),
    );
  }
}
