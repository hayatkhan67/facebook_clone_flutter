// ignore: file_names
import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider(
      {super.key, this.indent, this.endIndent, this.thick, this.color});

  // ignore: prefer_typing_uninitialized_variables
  final thick, indent, color, endIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? const Color.fromARGB(255, 209, 206, 206),
      thickness: thick ?? 6,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
