

import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class PercentageWidget extends StatelessWidget {
  const PercentageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleCircularProgressBar(
      maxValue: 100,
      mergeMode: true,
      size: 36,
      progressStrokeWidth: 6,
      backStrokeWidth: 7,
      progressColors: [Colors.purple.shade100, Colors.purple.shade900],
      onGetText: (double value) {
          TextStyle centerTextStyle = TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.purpleAccent.withOpacity(value * 0.01),
          );
          return Text(
              '${value.toInt()}',
              style: centerTextStyle,
          );
      },
    );
  }
}