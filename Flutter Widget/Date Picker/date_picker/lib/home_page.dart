import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Date time variable
  DateTime _dateTime = DateTime.now();

  // show date picker
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999),
      lastDate: DateTime(2050),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // display choosen date
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _dateTime.day.toString(),
                  style: const TextStyle(fontSize: 25),
                ),
                const Text(' - '),
                Text(
                  _dateTime.month.toString(),
                  style: const TextStyle(fontSize: 25),
                ),
                const Text(' - '),
                Text(
                  _dateTime.year.toString(),
                  style: const TextStyle(fontSize: 25),
                ),
              ],
            ),

            // button
            MaterialButton(
              onPressed: _showDatePicker,
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Choose Date',
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
