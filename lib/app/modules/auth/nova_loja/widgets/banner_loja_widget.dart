import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';

class BannerLojaWidget extends StatelessWidget {
  const BannerLojaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(
        label: "Banner loja (URL)",
        formControlName: "banner");
  }
}
