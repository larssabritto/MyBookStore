import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextWidget(label: ""
        "Senha", formControlName: "password");
  }
}
