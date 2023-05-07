import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';

class FotoAdministrador extends StatelessWidget {
  const FotoAdministrador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextWidget(label: "Foto do Administrador", formControlName: "foto");
  }
}
