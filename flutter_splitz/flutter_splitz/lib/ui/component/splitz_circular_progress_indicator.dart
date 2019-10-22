import 'package:flutter/material.dart';

class SplitzCircularProgressIndicator {
  CircularProgressIndicator call(valueColor) =>
      CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(valueColor));
}