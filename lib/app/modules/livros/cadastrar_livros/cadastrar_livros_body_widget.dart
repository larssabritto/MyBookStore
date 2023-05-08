import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/components/button_widget.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';
import 'package:mybookstore/app/dtos/book/create_book/create_store_book.response.dto.dart';
import 'package:mybookstore/app/dtos/book/create_book/store_book.request.dto.dart';
import 'package:mybookstore/app/repository/book.repository.dart';
import 'package:mybookstore/app/repository/contracts/ibook.repository.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../components/label_widget.dart';

class CadastrarLivrosBody extends StatelessWidget {
  CadastrarLivrosBody({Key? key}) : super(key: key);

  final IBookRepository _bookRepository = BookRepository();
  final _spacer = const SizedBox(height: 20);
  int avaliacao = 0;

  final FormGroup form = FormGroup({
    'titulo': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(50),
    ]),
    'autor': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(40),
    ]),
    'sinopse': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(100),
    ]),
    'publicacao': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(4),
    ]),
    'capa': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(1000),
    ], value: "https://wiki.geloefogo.com/images/d/dc/A_Dan%C3%A7a_dos_Drag%C3%B5es_-_Editora_Suma.jpg"),
    'status': FormControl<bool>(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(10),
    ]),
  });

  Future<void> cadastrarLivro() async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      StoreBookRequestDTO storeBook = StoreBookRequestDTO(
        available: form.control('status').value,
        author: form.control('autor').value,
        synopsis: form.control('sinopse').value,
        year: int.parse(form.control('publicacao').value),
        title: form.control('titulo').value,
        cover: form.control('capa').value,
        rating: avaliacao
      );

      CreateStoreBookResponseDTO createdBook = await _bookRepository.createStoreBook(preferences.getInt("idStore") ?? -1, storeBook); 
      Modular.to.navigate("/home/");
    } catch(exception) {
      print(exception);
    }
  }

  void alterarAvaliacao(int novaAvaliacao) {
    avaliacao = novaAvaliacao;
  }

  @override
  Widget build(BuildContext context) {
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
                  const LabelWidget(
                    label: "Cadastrar Livro",
                  ),
                  const SizedBox(height: 40),
                  const InputTextWidget(
                    label: 'Imagem de capa',
                    formControlName: 'capa',
                  ),
                  _spacer,
                  const InputTextWidget(
                    label: 'Título',
                    formControlName: 'titulo',
                  ),
                  _spacer,
                  const InputTextWidget(
                    label: 'Autor',
                    formControlName: 'autor',
                  ),
                  _spacer,
                  const InputTextWidget(
                    label: "Sinopse",
                    formControlName: 'sinopse',
                  ),
                  _spacer,
                  const InputTextWidget(
                    label: ""
                        "Ano de publicacao",
                    formControlName: 'publicacao',
                  ),
                  _spacer,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text('Rating'),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () => alterarAvaliacao(1),
                              icon: const Icon(Icons.star),
                            ),
                            IconButton(
                              onPressed: () => alterarAvaliacao(2),
                              icon: const Icon(Icons.star),
                            ),
                            IconButton(
                              onPressed: () => alterarAvaliacao(3),
                              icon: const Icon(Icons.star),
                            ),
                            IconButton(
                              onPressed: () => alterarAvaliacao(4),
                              icon: const Icon(Icons.star),
                            ),
                            IconButton(
                              onPressed: () => alterarAvaliacao(5),
                              icon: const Icon(Icons.star),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text('Status'),
                        const SizedBox(width: 10),
                        ReactiveSwitch(
                          activeColor: const Color(0xff08182A),
                          formControlName: "status",
                        ),
                        const Text('Em estoque'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  ButtonWidget(
                    text: "Salvar",
                    onPressed: () => cadastrarLivro(),
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
