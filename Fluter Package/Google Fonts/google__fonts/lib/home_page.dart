import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'This is some random text',
              style: GoogleFonts.alegreya(fontSize: 20, color: Colors.white),
            ),
            Text(
              'Hello ',
              style: GoogleFonts.aBeeZee(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
