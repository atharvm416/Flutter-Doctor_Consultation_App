import 'package:flutter/material.dart';
import 'package:kiran/utils/routes.dart';

class SubmitBody extends StatefulWidget {
  const SubmitBody({Key? key}) : super(key: key);

  @override
  State<SubmitBody> createState() => _SubmitBodyState();
}

class _SubmitBodyState extends State<SubmitBody> {
  DateTime dateTime = DateTime(2022, 12, 24, 5, 30);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final hours = dateTime.hour.toString().padLeft(2, '0');
    final minutes = dateTime.minute.toString().padLeft(2, '0');
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Date and Time',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: Text(
                        '${dateTime.year}/${dateTime.month}/${dateTime.day}'),
                    onPressed: () async {
                      final date = await pickDate();
                      if (date == null) return;

                      final newDateTime = DateTime(
                        date.year,
                        date.month,
                        date.day,
                        dateTime.hour,
                        dateTime.minute,
                      );
                      setState(() => dateTime = newDateTime);
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    child: Text('$hours:$minutes'),
                    onPressed: () async {
                      final time = await pickTime();
                      if (time == null) return;

                      final newDateTime = DateTime(
                        dateTime.year,
                        dateTime.month,
                        dateTime.day,
                        time.hour,
                        time.minute,
                      );
                      setState(() => dateTime = newDateTime);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              child: const Text("Find Doctor"),
              style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.finalRoute);
              },
            )
          ],
        ),
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(2022),
      lastDate: DateTime(2023));

  Future<TimeOfDay?> pickTime() => showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute));

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
