import 'package:flutter/material.dart';
import 'components/novo_funcionario_widget.dart';

class FuncionariosBodyWidget extends StatelessWidget {
  const FuncionariosBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: const [
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
          FuncionarioListItem(),
        ],
      ),
    );
  }
}
