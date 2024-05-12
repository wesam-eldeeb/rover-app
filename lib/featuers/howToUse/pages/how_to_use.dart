import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rover_app/featuers/howToUse/widgets/build_steps.dart';
import 'package:rover_app/featuers/howToUse/widgets/video_player_widget.dart';
import 'package:video_player/video_player.dart';

class HowToUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.red),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'How To Use',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VideoPlayerWidget(), // عرض عنصر تشغيل الفيديو
            buildSteps(),
          ],
        ),
      ),
    );
  }
}
