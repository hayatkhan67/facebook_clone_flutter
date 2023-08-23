import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Container(
      width: w < 800
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
        gradient: const LinearGradient(begin: Alignment.topLeft, colors: [
          Color.fromARGB(255, 108, 201, 111),
          Color.fromARGB(255, 98, 163, 216)
        ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.music_note),
          ),
          SizedBox(height: 10),
          Text('Music')
        ],
      ),
    );
  }
}
