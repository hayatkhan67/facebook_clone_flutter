// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
      {super.key,
      required this.text,
      this.align,
      this.fontFamily,
      this.color,
      this.fWeight,
      this.size});

  final dynamic text;
  final Color? color;
  final FontWeight?fWeight;
  final double? size;
  final TextAlign? align;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: fontFamily,
          color: color ?? Colors.black,
          fontWeight: fWeight ?? FontWeight.normal,
          fontSize: size ?? 14.0),
    );
  }
}
