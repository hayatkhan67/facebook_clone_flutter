import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyElevatedButton extends StatefulWidget {
  MyElevatedButton(
      {super.key,
      onPressed,
      this.elevation,
      this.sizeWidth,
      this.child,
      this.sizeHeight,
      this.shape});
  Widget? child;
  // ignore: prefer_typing_uninitialized_variables
  var _onPressed;

  get onPressed => _onPressed;

  set onPressed(value) {
    _onPressed = value;
  }

  // ignore: prefer_typing_uninitialized_variables
  final sizeWidth, sizeHeight, elevation, shape;
  @override
  State<MyElevatedButton> createState() => _MyElevatedButtonState();
}

class _MyElevatedButtonState extends State<MyElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget._onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(
              widget.sizeWidth ?? double.maxFinite, widget.sizeHeight ?? 40),
          elevation: widget.elevation ?? 3,
          shape: widget.shape,
        ),
        child: widget.child);
  }
}
