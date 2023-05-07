import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';
import 'package:mybookstore/app/components/router_button_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';


class SignInBodyWidget extends StatelessWidget {
   const SignInBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    FormGroup form = FormGroup({
        'nome': FormControl(validators: [
        Validators.required,
        Validators.minLength(6),
        Validators.maxLength(10),
        ]),
        'senha': FormControl(validators: [
        Validators.required,
        Validators.minLength(6),
        Validators.maxLength(10),
        ]),
    });

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
                    style:
                    TextStyle(
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
                        maxLength: 10,
                         validationMessages: {
                          ValidationMessage.required: (erro) => "Campo obrigatório" ,
                      },
                    ),
                    const SizedBox(height: 10),
                    InputTextWidget(
                      isPassword: true,
                      label: "Senha",
                      formControlName: "senha",
                      maxLength: 10,
                      validationMessages: {
                        ValidationMessage.required: (erro) => "Campo obrigatório",
                      },
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    RouterButtonWidget(text:"Entrar", route: '',),
                    SizedBox(height: 10),
                    RouterButtonWidget(text: "Cadastrar minha loja", route: '/auth/novaloja',)
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
