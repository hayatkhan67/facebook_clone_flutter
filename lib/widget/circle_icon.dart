import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon(
      {super.key,
      this.icon,
      this.size,
      this.onPressed,
      this.color,
      this.circle = true,
      this.image});
  final IconData? icon;
  final double? size;
  final ImageProvider<Object>? image;
  final Color? color;
  final Function()? onPressed;
  final bool circle;
  @override
  Widget build(BuildContext context) {
    return circle == true
        ? CircleAvatar(
            backgroundImage: image,
            backgroundColor: Colors.grey[200],
            radius: 18,
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
/*Container(
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            decoration: BoxDecoration(
                // color: Color.fromARGB(255, 225, 220, 220),
                color: Colors.grey.shade200,
                shape: BoxShape.circle),
            child:*/