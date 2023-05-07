import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MybookStoreApp extends StatelessWidget {
  const MybookStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'MyBookStore App',
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}


