import 'package:flutter/material.dart';
import 'package:kiran/contents/friend_body.dart';
import 'package:kiran/widgets/drawer.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screening App"),
      ),
      body: const FriendBody(),
      drawer: const MyDrawer(),
    );
  }
}
