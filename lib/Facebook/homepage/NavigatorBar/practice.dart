import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  final List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.person,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Bar'),
      ),
      body: const Center(
        child: Text('Content goes here'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: icons.map((IconData icon) {
          return BottomNavigationBarItem(
            icon: Icon(icon),
            label: '',
          );
        }).toList(),
      ),
    );
  }
}
