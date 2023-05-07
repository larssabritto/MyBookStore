import 'package:flutter/material.dart';

class SplashscreenViewWidget extends StatefulWidget {
  const SplashscreenViewWidget({Key? key}) : super(key: key);

  @override
  State<SplashscreenViewWidget> createState() => _SplashscreenViewWidgetState();
}

class _SplashscreenViewWidgetState extends State<SplashscreenViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/logo.jpg"),
                fit: BoxFit.fitWidth)),
        child: Container(
          child: const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              )),
        ));
  }
}
