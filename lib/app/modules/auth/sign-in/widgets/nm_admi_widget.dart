import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';

class NomeAdministradorWidget extends StatelessWidget {
  const NomeAdministradorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextWidget(label: "Nome do Administrador", formControlName: "nm_admin");
  }
}
