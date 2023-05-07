import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';

class SloganLojaWidget extends StatelessWidget {
  const SloganLojaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextWidget(label: "Slogan da loja", formControlName: "slogan");
  }
}
