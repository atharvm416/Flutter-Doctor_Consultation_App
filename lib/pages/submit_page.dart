import 'package:flutter/material.dart';
import 'package:kiran/contents/submit_body.dart';
import 'package:kiran/widgets/drawer.dart';

class SubmitPage extends StatelessWidget {
  const SubmitPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screening App"),
      ),
      body: const SubmitBody(),
      drawer: const MyDrawer(),
    );
  }
}
