import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/components/button_widget.dart';
import 'package:mybookstore/app/components/router_button_widget.dart';
import 'package:mybookstore/app/dtos/auth/login/login.request.dto.dart';
import 'package:mybookstore/app/dtos/auth/login/login.response.dto.dart';
import 'package:mybookstore/app/repository/auth.repository.dart';
import 'package:mybookstore/app/repository/contracts/iauth.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../components/text_widget.dart';

class SignInBodyWidget extends StatelessWidget {
  IAuthRepository authRepository = AuthRepository();

  //TODO: Remove code credentials
  final usernameController = TextEditingController(text: "julio.bitencourt");
  final passwordController = TextEditingController(text: "8ec4sJ7dx!*d");

  SignInBodyWidget({Key? key}) : super(key: key);

  login() async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      LoginRequestDTO loginDto = LoginRequestDTO(
        user: usernameController.text,
        password: passwordController.text,
      );

      LoginResponseDTO loginResponse = await authRepository.login(loginDto);
      preferences.setInt("idStore", loginResponse.store!.id ?? 0);

      Modular.to.navigate("/home/");
    } catch (exception) {
      print(exception);
    }
  }

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
              child: Text(
                "MyBookStore",
                style: TextStyle(
                  color: Color(0xff08182A),
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 50),
            TextWidget(
              keyboardType: TextInputType.emailAddress,
              controller: usernameController,
              hintText: "Nome",
              obscureText: false,
            ),
            const SizedBox(height: 10),
            TextWidget(
              controller: passwordController,
              hintText: "Senha",
              obscureText: false,
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonWidget(
                text: "Entrar",
                onPressed: () => login(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: RouterButtonWidget(
                text: "Cadastrar minha loja",
                route: '/auth/novaloja',
              ),
            )
          ],
        ),
      ),
    );
  }
}
