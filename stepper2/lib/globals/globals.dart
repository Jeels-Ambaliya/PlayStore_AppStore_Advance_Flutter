import 'package:flutter/material.dart';

class Globals {
  static int stepIndex = 0;
  static List<GlobalKey<FormState>> formKey =
      List.generate(8, (index) => GlobalKey<FormState>());
}
