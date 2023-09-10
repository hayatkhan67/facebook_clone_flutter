// ignore_for_file: file_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
      {super.key,
      required this.text,
      this.align,
      this.fontFamily,
      this.color,
      this.fWeight,
      this.size,
      this.maxline,
      this.overflow});

  final String? text;
  final Color? color;
  final FontWeight? fWeight;
  final double? size;
  final TextAlign? align;
  final String? fontFamily;
  final int? maxline;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return AutoSizeText(
      text.toString(),
      textAlign: align,
      textScaleFactor: w > 1100 ? 0.8 : 1.0,
      minFontSize: 10,
      maxFontSize: 30,
      style: TextStyle(
        fontFamily: fontFamily,
        color: color ?? Colors.black,
        fontWeight: fWeight ?? FontWeight.normal,
        fontSize: size,
      ),
      maxLines: maxline ?? 6,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}
