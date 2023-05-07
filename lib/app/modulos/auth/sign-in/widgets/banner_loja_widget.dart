import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';

class BannerLojaWidget extends StatelessWidget {
  const BannerLojaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextWidget(
        label: "Banner loja",
        formControlName: "banner");
  }
}
