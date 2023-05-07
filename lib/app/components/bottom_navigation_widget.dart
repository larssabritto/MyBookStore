import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final List<Widget> child;

  const BottomNavigation({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: IconTheme(
        data: const IconThemeData(color: Color.fromARGB(255, 1, 22, 39)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 6.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: child),
        ),
      ),
    );
  }
}