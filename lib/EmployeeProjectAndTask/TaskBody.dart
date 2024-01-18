import 'package:flutter/material.dart';

import '../Colors_Fonts/fonts/fonts.dart';

class TaskBody{
  Widget buildTaskBody() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome to EmpBody!',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 16),
          Text(
            'Your main body content goes here.',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}



