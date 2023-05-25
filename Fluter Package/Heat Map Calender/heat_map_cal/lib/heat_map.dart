import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class MyHeatMap extends StatelessWidget {
  const MyHeatMap({super.key});

  @override
  Widget build(BuildContext context) {
    return HeatMap(
      datasets: {
        DateTime(2023, 6, 6): 3,
        DateTime(2023, 6, 7): 7,
        DateTime(2023, 6, 8): 10,
        DateTime(2023, 6, 9): 13,
        DateTime(2023, 6, 13): 6,
      },
      startDate: DateTime.now(),
      endDate: DateTime.now().add(const Duration(days: 40)),
      size: 40,
      textColor: Colors.white,
      colorMode: ColorMode.opacity,
      showText: false,
      scrollable: true,
      colorsets: const {
        1: Color.fromARGB(20, 2, 175, 8),
        2: Color.fromARGB(40, 2, 175, 8),
        3: Color.fromARGB(60, 2, 175, 8),
        4: Color.fromARGB(80, 2, 175, 8),
        5: Color.fromARGB(100, 2, 175, 8),
        6: Color.fromARGB(120, 2, 175, 8),
        7: Color.fromARGB(150, 2, 175, 8),
        8: Color.fromARGB(180, 2, 175, 8),
        9: Color.fromARGB(220, 2, 175, 8),
        10: Color.fromARGB(250, 2, 175, 8),
      },
      onClick: (value) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(value.toString())));
      },
    );
  }
}
