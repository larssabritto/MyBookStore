import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/components/button_widget.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';
import 'package:mybookstore/app/components/router_button_widget.dart';
import 'package:mybookstore/app/dtos/auth/login/login.request.dto.dart';
import 'package:mybookstore/app/dtos/auth/login/login.response.dto.dart';
import 'package:mybookstore/app/repository/auth.repository.dart';
import 'package:mybookstore/app/repository/contracts/iauth.repository.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SignInBodyWidget extends StatelessWidget {
  IAuthRepository authRepository = AuthRepository();

  FormGroup form = FormGroup({
    'nome': FormControl(validators: [
      Validators.required,
    ], value: "emperor.palpatine"),
    'senha': FormControl(validators: [
      Validators.required,
      Validators.minLength(6),
      Validators.maxLength(10),
    ], value: "8ec4sJ7dx!"),
  });

  SignInBodyWidget({Key? key}) : super(key: key);

  login() async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      LoginRequestDTO loginDto = LoginRequestDTO(
        user: form.control('nome').value,
          password: form.control('senha').value,
      );

      LoginResponseDTO loginResponse = await authRepository.login(loginDto);
      preferences.setInt("idStore", loginResponse.store!.id ?? 0);
      preferences.setString("adminPhoto", loginResponse.user!.photo ?? "");
      preferences.setString("adminName", loginResponse.user!.name ?? "");

      Modular.to.navigate("/home/");
    } catch (exception) {
      print(exception);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("MyBookStore",
                    style: TextStyle(
                      color: Color(0xff08182A),
                      fontSize: 25,
                    )),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    InputTextWidget(
                      label: "Nome",
                      formControlName: "nome",
                      keyboardType: TextInputType.emailAddress,
                      validationMessages: {
                        ValidationMessage.required: (erro) =>
                            "Campo obrigatório",
                      },
                    ),
                    const SizedBox(height: 10),
                    InputTextWidget(
                      isPassword: true,
                      label: "Senha",
                      formControlName: "senha",
                      maxLength: 10,
                      validationMessages: {
                        ValidationMessage.required: (erro) =>
                            "Campo obrigatório",
                      },
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ButtonWidget(
                      text: "Entrar",
                      onPressed: () => login(),
                    ),
                    const SizedBox(height: 10),
                    const RouterButtonWidget(
                      text: "Cadastrar minha loja",
                      route: '/auth/novaloja',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
