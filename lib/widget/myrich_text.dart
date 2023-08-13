import 'package:flutter/material.dart';

class RicText extends StatelessWidget {
  const RicText({
    super.key,
    this.first,
    this.sec,
    this.fontFamily,
    this.color,
    this.fWeight,
    this.size,
    this.maxline,
    this.overflow,
    this.fontFamily2,
    this.color2,
    this.fWeight2,
    this.size2,
    this.maxline2,
    this.overflow2,
  });
  final String? first;
  final String? sec;
  final String? fontFamily;
  final String? fontFamily2;
  final Color? color;
  final Color? color2;
  final FontWeight? fWeight;
  final FontWeight? fWeight2;
  final double? size;
  final double? size2;
  final int? maxline;
  final int? maxline2;
  final TextOverflow? overflow;
  final TextOverflow? overflow2;
  @override
  Widget build(BuildContext context) {
    return RichText(
        maxLines: maxline ?? 6,
        text: TextSpan(children: [
          TextSpan(
              text: first,
              style: TextStyle(
                overflow: overflow,
                fontFamily: fontFamily,
                color: color ?? Colors.black,
                fontWeight: fWeight ?? FontWeight.normal,
                fontSize: size ?? 13,
              )),
          TextSpan(
              text: sec,
              style: TextStyle(
                overflow: overflow2,
                fontFamily: fontFamily2,
                color: color2 ?? Colors.black,
                fontWeight: fWeight2 ?? FontWeight.normal,
                fontSize: size2 ?? 15,
              ))
        ]));
  }
}
