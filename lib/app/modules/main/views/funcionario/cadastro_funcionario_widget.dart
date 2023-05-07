import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';
import 'package:mybookstore/app/components/router_button_widget.dart';
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
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: SizedBox(
                height: height,
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReactiveForm(
                          formGroup: form,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                                child: Text(
                                  "Novo Funcionario",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff08182A),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  CircleAvatar(
                                    radius: 45,
                                    backgroundImage: NetworkImage(
                                      "https://photografos.com.br/wp-content/uploads/2020/09/fotografia-para-perfil.jpg",
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: InputTextWidget(
                                    label: "Nome", formControlName: "nome"),
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: InputTextWidget(
                                    label: "Usuário  de login",
                                    formControlName: "usuario"),
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: InputTextWidget(
                                    label: "Senha", formControlName: "senha"),
                              ),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: RouterButtonWidget(text: "Editar", route: ""),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: RouterButtonWidget(text: "Cancelar", route: ""),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
