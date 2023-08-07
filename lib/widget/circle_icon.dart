import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon(
      {super.key,
      required this.icon,
      this.size,
      this.onPressed,
      this.color,
      this.circle = true});
  final IconData? icon;
  final double? size;
  final Color? color;
  final Function()? onPressed;
  final bool circle;
  @override
  Widget build(BuildContext context) {
    return circle == true
        ? Container(
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 11),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 225, 220, 220),
                shape: BoxShape.circle),
            child: Center(
              child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  size: size ?? 20,
                  color: color ?? Colors.black,
                ),
              ),
            ))
        : IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: size,
              color: color ?? Colors.black,
            ),
          );
  }
}
