import 'package:flutter/material.dart';
import 'package:mybookstore/app/modules/main/views/perfil/perfil_body_widget.dart';

class PerfilViewWidget extends StatelessWidget {
  const PerfilViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: PerfilBodyWidget()
    );
  }
}
