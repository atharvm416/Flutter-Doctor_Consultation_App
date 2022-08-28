import 'package:flutter/material.dart';

class FinalBody extends StatelessWidget {
  const FinalBody({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Thank you For submission we will notify you shortly',
              style: TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
