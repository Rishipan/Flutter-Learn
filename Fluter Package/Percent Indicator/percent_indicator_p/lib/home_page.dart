import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                animation: true,
                animationDuration: 1000,
                radius: 120,
                lineWidth: 20,
                percent: 0.4,
                progressColor: Colors.deepPurple,
                backgroundColor: Colors.deepPurple.shade200,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text(
                  '40%',
                  style: TextStyle(fontSize: 30, color: Colors.deepPurple),
                ),
              ),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 40,
                percent: 0.50,
                progressColor: Colors.deepPurple,
                backgroundColor: Colors.deepPurple.shade200,
                barRadius: const Radius.circular(20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
