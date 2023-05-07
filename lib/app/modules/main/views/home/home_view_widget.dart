import 'package:flutter/material.dart';
import 'package:mybookstore/app/modules/main/views/home/home_body_widget.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff08182A),
        title: const Text(
          "MyBookStore",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: HomeBodyWidget()
    );
  }
}
