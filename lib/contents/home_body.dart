import 'package:flutter/material.dart';
import 'package:kiran/contents/slider_container.dart';
import 'package:kiran/utils/routes.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            const Text(
              "How do You Feel?",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SliderContainer(),
            Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 65.0,
                    height: 60.0,
                    child: Center(
                      child: Image.asset(
                        "assets/emojis/angry.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 65.0,
                    height: 60.0,
                    child: Center(
                      child: Image.asset(
                        "assets/emojis/verysad.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 65.0,
                    height: 60.0,
                    child: Center(
                      child: Image.asset(
                        "assets/emojis/Tired.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 65.0,
                    height: 60.0,
                    child: Center(
                      child: Image.asset(
                        "assets/emojis/sad.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 65.0,
                    height: 60.0,
                    child: Center(
                      child: Image.asset(
                        "assets/emojis/Normal.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 65.0,
                    height: 60.0,
                    child: Center(
                      child: Image.asset(
                        "assets/emojis/Happy.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Reason in few words",
                      labelText: "Reason",
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Medical History",
                      labelText: "Medical History",
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    child: const Text("Submit"),
                    style:
                        TextButton.styleFrom(minimumSize: const Size(150, 40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.submitRoute);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
