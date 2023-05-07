import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'livros_body_widget.dart';

class LivrosViewWidget extends StatelessWidget {
  const LivrosViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff08182A),
        title: const Text(
          "MyBookStore",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const LivrosBodyWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff08182A),
        onPressed: () {Modular.to.pushNamed('/livros/');},
        child: const Icon(Icons.add),
      ),
    );
  }
}
