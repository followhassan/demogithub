import 'package:flutter/material.dart';
import 'package:lab_final/calculator/scientificCalculator.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScientificCalculator(),
    );
  }
}
