import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  double w(double value) {
    final screenWidth = MediaQuery.of(this).size.width;
    return (value / 390) * screenWidth;
  }

  double h(double value) {
    final screenHeight = MediaQuery.of(this).size.height;
    return (value / 1665) * screenHeight;
  }

  double r(double value) {
    final shortestSide = MediaQuery.of(this).size.shortestSide;
    return (value / 390) * shortestSide;
  }

  double s(double value) {
    final screenWidth = MediaQuery.of(this).size.width;
    return (value / 390) * screenWidth;
  }
}
