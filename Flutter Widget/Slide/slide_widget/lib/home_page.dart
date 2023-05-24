import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Slide Button',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.deepPurple[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            SizedBox(
              height: 650,
              child: Image.asset('assets/images/logo.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            SlideAction(
              borderRadius: 12,
              elevation: 0,
              innerColor: Colors.deepPurple,
              outerColor: Colors.deepPurple[200],
              sliderButtonIcon: const Icon(
                Icons.lock_open,
                color: Colors.white,
              ),
              text: 'Slide to unlock',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              sliderRotate: false,
              onSubmit: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        backgroundColor: Colors.deepPurple,
                        title: Center(
                          child: Text(
                            'Congratulation!! 👍',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),
          ]),
        ),
      ),
    );
  }
}
