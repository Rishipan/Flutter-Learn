import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // create TimeOfDay method
  TimeOfDay _timeOfDay = const TimeOfDay(hour: 0, minute: 00);

  // show time picker method
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //chossen time
            Text(
              _timeOfDay.format(context).toString(),
              style: const TextStyle(fontSize: 30),
            ),

            //button
            MaterialButton(
              onPressed: _showTimePicker,
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'Pick Time',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
