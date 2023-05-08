import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';

class RepetirPassword extends StatelessWidget {
  const RepetirPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(label: "Repetir senha", formControlName: "repetir_senha");
  }
}
