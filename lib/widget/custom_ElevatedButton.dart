// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends StatefulWidget {
  CustomElevatedButton(
      {super.key,
      this.elevation,
      this.sizeWidth,
      this.child,
      this.sizeHeight,
      this.shape,
      this.color,
      required this.onPressed});

  Widget? child;
  final double? sizeWidth;
  final double? sizeHeight;
  final double? elevation;
  final OutlinedBorder? shape;
  final Color? color;
  final Function()? onPressed;
  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(
              widget.sizeWidth ?? double.maxFinite, widget.sizeHeight ?? 40),
          elevation: widget.elevation ?? 3,
          shape: widget.shape,
          backgroundColor: widget.color,
        ),
        child: widget.child);
  }
}
