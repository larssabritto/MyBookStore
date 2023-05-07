import 'package:flutter/material.dart';

import '../../../../components/input_text_widget.dart';

class NomeTextWidget extends StatelessWidget {
  const NomeTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(label: "Nome", formControlName: "nome");

  }
}
