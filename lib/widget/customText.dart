// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

//
class MyText extends StatelessWidget {
  const MyText(
      {super.key, required this.text, this.color, this.fWeight, this.size});

  final String text;

  final color;

  final fWeight;

  final size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.black,
          fontWeight: fWeight ?? FontWeight.normal,
          fontSize: size ?? 14),
    );
  }
}
