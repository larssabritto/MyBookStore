import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/components/button_widget.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';
import 'package:mybookstore/app/components/router_button_widget.dart';
import 'package:mybookstore/app/dtos/store/get_store/get_store_response.dto.dart';
import 'package:mybookstore/app/modules/main/views/perfil/banner_widget.dart';
import 'package:mybookstore/app/repository/contracts/istore.repository.dart';
import 'package:mybookstore/app/repository/store.repository.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PerfilBodyWidget extends StatelessWidget {
  final _spacer = const SizedBox(height: 50);
  final IStoreRepository _storeRepository = StoreRepository();
  String profilePhoto = "";

  Future<GetStoreResponseDTO> getStore() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    profilePhoto = preferences.getString("adminPhoto") ?? "";
    String profileName = preferences.getString("adminName") ?? "";

    GetStoreResponseDTO loggedStore =
        await _storeRepository.getStore(preferences.getInt("idStore") ?? -1);

    form.control("nm_loja").patchValue(loggedStore.name);
    form.control("slogan").patchValue(loggedStore.slogan);
    form.control("nm_usuario").patchValue(profileName);
    return loggedStore;
  }

  PerfilBodyWidget({Key? key}) : super(key: key);

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

  void logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();

    Modular.to.navigate("/auth/");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getStore(),
      builder: (context, AsyncSnapshot<GetStoreResponseDTO> loggedStore) {
        if (loggedStore.hasData) {
          return ReactiveForm(
            formGroup: form,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BannerWidget(
                          book: loggedStore.data ?? GetStoreResponseDTO(),
                          profilePhoto: profilePhoto,
                        ),
                        const SizedBox(height: 50),
                        const Text(
                          "Imagem de Perfil",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff08182A),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const InputTextWidget(
                            label: "Nome da loja", formControlName: "nm_loja"),
                        const SizedBox(height: 20),
                        const InputTextWidget(
                            label: "Slogan da loja", formControlName: "slogan"),
                        const SizedBox(height: 20),
                        const InputTextWidget(
                            label: "Nome do usuário",
                            formControlName: "nm_usuario"),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const RouterButtonWidget(
                      text: "Salvar",
                      route: '',
                    ),
                    const SizedBox(height: 20),
                    ButtonWidget(
                      text: "Sair",
                      onPressed: () => logout()
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
