import 'package:flutter/material.dart';
import 'package:kiran/pages/home_page.dart';
import 'package:kiran/pages/login_page.dart';
import 'package:kiran/pages/submit_page.dart';
import 'package:kiran/pages/final_page.dart';
import 'package:kiran/pages/request_page.dart';
import 'package:kiran/pages/friend_page.dart';
import 'package:kiran/pages/chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        routes: {
          "/": (context) => const LoginPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
          "/submit": (context) => const SubmitPage(),
          "/final": (context) => const FinalPage(),
          "/request": (context) => const RequestPage(),
          "/friend": (context) => const FriendPage(),
          "/chat": (context) => const ChatPage(),
        });
  }
}
