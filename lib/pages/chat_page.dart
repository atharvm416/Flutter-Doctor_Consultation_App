import 'package:flutter/material.dart';
import 'package:kiran/contents/chat_body.dart';
import 'package:kiran/widgets/drawer.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("I am Bot"),
      ),
      body: const ChatBody(),
      drawer: const MyDrawer(),
    );
  }
}
