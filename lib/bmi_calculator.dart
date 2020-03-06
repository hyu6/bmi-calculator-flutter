import 'dart:math';

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BMICalculator {
  BMICalculator({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your body weight is high.\nTry to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'Your body weight is normal.\nGreat!';
    } else {
      return 'Your body weight is low.\nYou can eat more.';
    }
  }

  TextStyle getResultTextStyle() {
    if (_bmi >= 25) {
      return kResultTextStyle.copyWith(color: Color(0xFFE53935));
    } else if (_bmi >= 18.5) {
      return kResultTextStyle.copyWith(color: Color(0xFF24D876));
    } else {
      return kResultTextStyle.copyWith(color: Color(0xFF1E88E5));
    }
  }
}
