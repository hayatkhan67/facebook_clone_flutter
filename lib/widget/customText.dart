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
      this.size, this.maxline, this.overflow});

  final String? text;
  final Color? color;
  final FontWeight?fWeight;
  final double? size;
  final TextAlign? align;
  final String? fontFamily;
  final int? maxline;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: align,
      style: TextStyle(
          fontFamily: fontFamily,
          color: color ?? Colors.black,
          fontWeight: fWeight ?? FontWeight.normal,
          // fontSize:MediaQuery.of(context).textScaleFactor*size ?? MediaQuery.of(context).textScaleFactor*14.0),
          fontSize:size!=null?MediaQuery.of(context).textScaleFactor * size!: MediaQuery.of(context).textScaleFactor * 16.0,
      ),
      maxLines: maxline ?? 2,
      overflow: overflow,
    );
  }
}
