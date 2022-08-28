import 'package:flutter/material.dart';
import 'package:kiran/utils/routes.dart';
import 'package:url_launcher/url_launcher.dart';

class RequestBody extends StatelessWidget {
  const RequestBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Center(
            child: Column(children: [
          Image.asset(
            "assets/images/request1.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Request For Service :",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(children: [
                ElevatedButton(
                  child: const Text("Myself"),
                  style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                ),
                ElevatedButton(
                  child: const Text("For a Friend"),
                  style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.friendRoute);
                  },
                ),
                ElevatedButton(
                  child: const Text("Chat"),
                  style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.chatRoute);
                  },
                ),
                ElevatedButton(
                  child: const Text("WebSite"),
                  style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                  onPressed: () async {
                    const url =
                        'https://vikaspedia.in/news/24x7-tollfree-mental-health-rehabilitation-helpline-kiran-18005990019-launched';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ])),
        ])));
  }
}
