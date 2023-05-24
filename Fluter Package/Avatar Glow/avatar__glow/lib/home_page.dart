import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Glow'),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.purple.shade200,
      body: const Center(
        child: AvatarGlow(
          endRadius: 100,
          glowColor: Colors.deepPurple,
          duration: Duration(milliseconds: 4000),
          repeatPauseDuration: Duration(milliseconds: 100),
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
