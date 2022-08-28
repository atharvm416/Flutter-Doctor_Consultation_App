import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:kiran/contents/request_body.dart';
import 'package:kiran/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screening App"),
        ),
        body: const RequestBody(),
        drawer: const MyDrawer(),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_arrow,
          backgroundColor: Colors.deepPurple,
          children: [
            SpeedDialChild(
                child: const Icon(
                  Icons.call,
                  color: Colors.deepPurple,
                ),
                label: 'Helpline',
                onTap: () async {
                  launch("tel:18005990019");
                }),
            SpeedDialChild(
                child: const Icon(
                  Icons.call,
                  color: Colors.deepPurple,
                ),
                label: 'Childline',
                onTap: () async {
                  launch("tel:1098");
                }),
          ],
        ));
  }
}
