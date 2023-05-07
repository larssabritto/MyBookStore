
import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';

class NomeLojaWidget extends StatelessWidget {
  const NomeLojaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextWidget(label: "Nome da loja", formControlName: "nm_loja");
  }
}
