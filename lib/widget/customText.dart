// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
      {super.key,
      required this.text,
      this.align,
      this.color,
      this.fWeight,
      this.size});

  // ignore: prefer_typing_uninitialized_variables
  final text, color, fWeight, size, align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
          color: color ?? Colors.black,
          fontWeight: fWeight ?? FontWeight.normal,
          fontSize: size ?? 14.0),
    );
  }
}
