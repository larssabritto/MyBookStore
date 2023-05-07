import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modulos/main/views/funcionario/funcionario_body_widget.dart';

class FuncionariosViewWidget extends StatelessWidget {
  const FuncionariosViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff08182A),
        title: const Text(
          "MyBookStore",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Funcionários",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(child: FuncionariosBodyWidget()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff08182A),
        onPressed: () =>
          Modular.to.pushNamed("/funcionarios/usuario"),
        child: const Icon(Icons.add),
      ),
    );
  }
}
