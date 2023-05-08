import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';

class FotoAdministrador extends StatelessWidget {
  const FotoAdministrador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(label: "Foto do Administrador (URL)", formControlName: "foto");
  }
}
