import 'package:flutter/material.dart';
import '../../../components/button_widget.dart';
import '../../../components/text_widget.dart';


class SignInBodyWidget extends StatelessWidget {

  final usernameController = TextEditingController();
  final emailController = TextEditingController();

   SignInBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("MyBookStore",
                  style:
                  TextStyle(
                    color: Color(0xff08182A),
                    fontSize: 25,
                  )),
            ),
            const SizedBox(height: 50),
            TextWidget(controller: usernameController, hintText: "nome", obscureText: false),
            const SizedBox(height: 10),
            TextWidget(controller: emailController, hintText: "E-mail", obscureText: false),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const ButtonWidget(text:"Entrar", route: '',),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const ButtonWidget(text: "Cadastrar minha loja", route: '/auth/novaloja',),
            )
          ],
        ),
      ),
    );
  }
}
