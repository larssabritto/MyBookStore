import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RouterButtonWidget extends StatelessWidget {
  final String text;
  final String route;
  const RouterButtonWidget({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xff08182A),
            Color(0xff1d272f),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            onPressed: () {
              Modular.to.navigate(route);
            },
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
