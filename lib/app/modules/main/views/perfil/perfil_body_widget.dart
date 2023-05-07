import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';
import 'package:mybookstore/app/components/router_button_widget.dart';
import 'package:mybookstore/app/modules/main/views/livros/components/banner_widget.dart';
import 'package:mybookstore/app/repository/book_mock.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PerfilBodyWidget extends StatelessWidget {
  final _spacer = const SizedBox(height: 50);
  PerfilBodyWidget({
    Key? key,
  }) : super(key: key);


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
    'nm_usuario': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(10),
    ]),
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BannerWidget(
                  book: bookMock,
                ),
                const SizedBox(height: 50),
                const Text("Imagem de Perfil",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff08182A),
      ),
                ),
                const SizedBox(height: 20),
                const InputTextWidget(label: "Nome da loja", formControlName: "nm_loja"),
                const SizedBox(height: 20),
                const InputTextWidget(label: "Slogan da loja", formControlName: "slogan"),
                const SizedBox(height: 20),
                const InputTextWidget(label: "Nome do usuário", formControlName: "nm_usuario"),
              ],
            ),
            const RouterButtonWidget(text: "Salvar", route: '',),
          ],
        ),
      ),
    );
  }
}
