import 'package:flutter/material.dart';
import 'package:kiran/contents/final_body.dart';
import 'package:kiran/widgets/drawer.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screening App"),
      ),
      body: const FinalBody(),
      drawer: const MyDrawer(),
    );
  }
}
