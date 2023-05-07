import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';
import 'package:mybookstore/app/components/router_button_widget.dart';
import 'package:mybookstore/app/modules/funcionarios/avatar_profile_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CadastrarFuncionarioWidget extends StatelessWidget {
  final double bannerHeight = 200.0;
  final double avatarHeight = 90.0;

  CadastrarFuncionarioWidget({Key? key}) : super(key: key);

  FormGroup form = FormGroup({
    'nome': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(10),
    ]),
    'usuario': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(10),
    ]),
    'senha': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(10),
    ]),
  });
  
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ReactiveForm(
        formGroup: form,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AvatarProfileWidget(),
                const SizedBox(height: 30),
                Column(
                  children: const [
                    InputTextWidget(
                        label: "Nome", formControlName: "nome"),
                    SizedBox(height: 15),
                    InputTextWidget(
                        label: "Usuário  de login",
                        formControlName: "usuario"),
                    SizedBox(height: 15),
                    InputTextWidget(
                        label: "Senha", formControlName: "senha"),
                    SizedBox(height: 15),
                  ],
                ),
                const RouterButtonWidget(text: "Editar", route: ""),
                const SizedBox(height: 15),
                const RouterButtonWidget(text: "Cancelar", route: ""),
              ],
            ),
          ),
        ),
      )
    );
  }
}
