import 'package:flutter/material.dart';

void myNavigator(BuildContext context, route) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ));
}
