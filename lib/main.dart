import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/modulos/app_module.dart';
import 'package:mybookstore/app_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyBookStore',
      home: Scaffold(
        body: ModularApp(
          module: AppModule(),
          child: const MybookStoreApp(),
        ),
      ),
    );
  }
}
