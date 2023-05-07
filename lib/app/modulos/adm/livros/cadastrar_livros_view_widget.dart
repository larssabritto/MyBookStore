import 'package:flutter/material.dart';
import 'package:mybookstore/app/modulos/adm/livros/cadastrar_livros_body_widget.dart';

class CadastrarLivrosViewWidget extends StatelessWidget {
  const CadastrarLivrosViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff08182A),
        elevation: 0,
        title: const Center(
          child: Text("MyBookStore",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
          ),
        ),
      ),
      body: const CadastrarLivrosBody(),
    );
  }
}