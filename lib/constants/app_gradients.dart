import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
     Color.fromRGBO(0, 150, 136, 0.96),
    Color.fromRGBO(131, 208, 201, 1),
  ], stops: [
    0.0,
    0.75
  ], transform: GradientRotation(2.13959913 * pi));
}
