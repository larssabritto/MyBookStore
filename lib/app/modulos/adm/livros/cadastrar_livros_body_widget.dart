
import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/button_widget.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../components/label_widget.dart';

class CadastrarLivrosBody extends StatelessWidget {
  const CadastrarLivrosBody({Key? key}) : super(key: key);


  final _spacer = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    FormGroup form = FormGroup({
      'titulo': FormControl(validators: [
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'autor': FormControl(validators: [
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'sinopse': FormControl(validators: [
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'publicacao': FormControl(validators: [
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'capa': FormControl(validators: [
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
      'status': FormControl<bool>(validators: [
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(10),
      ]),
    });

     return ReactiveForm(
      formGroup: form,
      child: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelWidget(
                      label: "Cadastrar Livro",
                    ),
                    SizedBox(height: 40),
                    InputTextWidget(
                      label: 'Imagem de capa',
                      formControlName: 'capa',
                    ),
                    _spacer,
                    InputTextWidget(
                      label: 'Título',
                      formControlName: 'titulo',
                    ),
                    _spacer,
                    InputTextWidget(
                      label: 'Autor',
                      formControlName: 'autor',
                    ),
                    _spacer,
                    InputTextWidget(
                      label:
                          "Sinopse",
                      formControlName: 'sinopse',
                    ),
                    _spacer,
                    InputTextWidget(
                      label: ""
                          "Ano de publicacao",
                      formControlName: 'publicacao',
                    ),
                    _spacer,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        const Text('Rating'),
                        Row(
                          children: [
                            IconButton(onPressed: () {} , icon:  Icon(Icons.star),
                            ),IconButton(onPressed: () {} , icon:  Icon(Icons.star),
                            ),IconButton(onPressed: () {} , icon:  Icon(Icons.star),
                            ),IconButton(onPressed: () {} , icon:  Icon(Icons.star),
                            ),
                          ],
                        ),
                      ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        const Text('Status'),
                        SizedBox(width: 10),
                        ReactiveSwitch(
                          activeColor: Color(0xff08182A),
                          formControlName:"status",
                        ),
                        Text('Em estoque'),
                      ],
                      ),
                    ),
                    SizedBox(height: 50),
                    ButtonWidget(text: "Salvar", route: '',)
                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }
}
