import 'package:flutter/material.dart';
import 'package:kiran/contents/home_body.dart';
import 'package:kiran/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screening App"),
      ),
      body: const HomeBody(),
      drawer: const MyDrawer(),
    );
  }
}
