import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  final String label;
  final double? fontSize;
  const LabelWidget({super.key, required this.label, this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return  Text(
      label,
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontSize),
    );
  }
}