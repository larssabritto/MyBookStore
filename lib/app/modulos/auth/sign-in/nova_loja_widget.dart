import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/button_widget.dart';
import 'package:mybookstore/app/modulos/auth/sign-in/widgets/banner_loja_widget.dart';
import 'package:mybookstore/app/modulos/auth/sign-in/widgets/foto_admin_widget.dart';
import 'package:mybookstore/app/modulos/auth/sign-in/widgets/nm_admi_widget.dart';
import 'package:mybookstore/app/modulos/auth/sign-in/widgets/nm_loja_widget.dart';
import 'package:mybookstore/app/modulos/auth/sign-in/widgets/password_widget.dart';
import 'package:mybookstore/app/modulos/auth/sign-in/widgets/repetir_passaword_widegt.dart';
import 'package:mybookstore/app/modulos/auth/sign-in/widgets/slogan_loja_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

class NovaLojaWidget extends StatelessWidget {
  const NovaLojaWidget({Key? key}) : super(key: key);

  final _spacer = const SizedBox(height: 15);


  @override
  Widget build(BuildContext context) {

    FormGroup form = FormGroup({
      'nm_loja': FormControl(validators: [
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'slogan': FormControl(validators: [
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'banner': FormControl(validators: [
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'nm_admin': FormControl(validators: [
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'foto': FormControl(validators: [
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'password': FormControl(validators: [
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'repetir': FormControl(validators: [
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ReactiveForm(
          formGroup: form,
          child: Padding(padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _spacer,
                  const Text("Minha loja",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff08182A),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const NomeLojaWidget(),
                  _spacer,
                  const SloganLojaWidget(),
                  _spacer,
                  const BannerLojaWidget(),
                  _spacer,
                  const NomeAdministradorWidget(),
                  _spacer,
                  const FotoAdministrador(),
                  _spacer,
                  const PasswordWidget(),
                  _spacer,
                  const RepetirPassword(),
                  _spacer,
                  Column(
                    children: [
                      _spacer,
                      ButtonWidget(text: "Cadastrar", route: '/home'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
