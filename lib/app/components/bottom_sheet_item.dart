import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomSheetItem extends StatelessWidget {
  final String label;
  final Icon icon;
  final String route;
  final IconButton? selectedIcon;

  const BottomSheetItem(
      {Key? key,
      required this.label,
      required this.icon,
      required this.route,
      this.selectedIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: icon,
      label: label,
      selectedIcon: IconButton(
        onPressed: () {
          // Modular.to.navigate(route);
        },
        icon: icon,
      ),
    );
  }
}
