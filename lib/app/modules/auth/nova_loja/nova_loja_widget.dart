import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/components/button_widget.dart';
import 'package:mybookstore/app/dtos/store/create_store/create_store.request.dto.dart';
import 'package:mybookstore/app/dtos/store/create_store/create_store.response.dto.dart';
import 'package:mybookstore/app/dtos/user_dto.dart';
import 'package:mybookstore/app/modules/auth/nova_loja/widgets/banner_loja_widget.dart';
import 'package:mybookstore/app/modules/auth/nova_loja/widgets/foto_admin_widget.dart';
import 'package:mybookstore/app/modules/auth/nova_loja/widgets/nm_admi_widget.dart';
import 'package:mybookstore/app/modules/auth/nova_loja/widgets/nm_loja_widget.dart';
import 'package:mybookstore/app/modules/auth/nova_loja/widgets/nome_text_widget.dart';
import 'package:mybookstore/app/modules/auth/nova_loja/widgets/password_widget.dart';
import 'package:mybookstore/app/modules/auth/nova_loja/widgets/repetir_passaword_widegt.dart';
import 'package:mybookstore/app/modules/auth/nova_loja/widgets/slogan_loja_widget.dart';
import 'package:mybookstore/app/repository/contracts/istore.repository.dart';
import 'package:mybookstore/app/repository/store.repository.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NovaLojaWidget extends StatelessWidget {
  NovaLojaWidget({Key? key}) : super(key: key);

  //TODO: Remove url values
  FormGroup form = FormGroup({
    'nm_loja': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(35),
    ]),
    'slogan': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(50),
    ]),
    'banner': FormControl(validators: [
      Validators.required,
    ]),
    'nm_admin': FormControl(validators: [
      Validators.required,
      Validators.minLength(5),
      Validators.maxLength(25),
    ]),
    'foto': FormControl(),
    'password': FormControl(validators: [
      Validators.minLength(5),
      Validators.maxLength(10),
    ]),
    'repetir_senha': FormControl(validators: [
      Validators.minLength(5),
      Validators.maxLength(10),
    ]),
    'username': FormControl()
  });

  final _spacer = const SizedBox(height: 15);
  final IStoreRepository _storeRepository = StoreRepository();

  Future<void> cadastrarLoja() async {
    if (form.control('password').value == form.control('repetir_senha').value) {
      try {
        SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        CreateStoreRequestDTO store = CreateStoreRequestDTO(
          banner: form.control("banner").value,
          slogan: form.control("slogan").value,
          admin: UserDTO(
              name: form.control('nm_admin').value,
              password: form.control('password').value,
              photo: form.control('foto').value,
              username: form.control('username').value),
          name: form.control("nm_loja").value,
        );

        CreateStoreResponseDTO createdStore = await _storeRepository.createStore(store);
        sharedPreferences.setInt("idStore", createdStore.store!.id ?? -1);
        sharedPreferences.setString("adminPhoto", createdStore.user!.photo ?? "");
        sharedPreferences.setString("adminName", createdStore.user!.name ?? "");

        Modular.to.navigate("/home/");
      } catch (exception) {
        print(exception);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ReactiveForm(
          formGroup: form,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _spacer,
                  const Text(
                    "Minha loja",
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
                  const NomeTextWidget(),
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
                      ButtonWidget(
                        text: "Cadastrar",
                        onPressed: () => cadastrarLoja(),
                      ),
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
