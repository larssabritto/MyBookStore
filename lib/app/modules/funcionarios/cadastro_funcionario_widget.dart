import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/components/button_widget.dart';
import 'package:mybookstore/app/components/input_text_widget.dart';
import 'package:mybookstore/app/components/router_button_widget.dart';
import 'package:mybookstore/app/dtos/default.response.dto.dart';
import 'package:mybookstore/app/dtos/user_dto.dart';
import 'package:mybookstore/app/modules/funcionarios/avatar_profile_widget.dart';
import 'package:mybookstore/app/repository/contracts/iemployee.repository.dart';
import 'package:mybookstore/app/repository/employee.repository.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CadastrarFuncionarioWidget extends StatelessWidget {
  final double bannerHeight = 200.0;
  final double avatarHeight = 90.0;
  final IEmployeeRepository employeeRepository = EmployeeRepository();

  CadastrarFuncionarioWidget({Key? key}) : super(key: key);

  Future<DefaultResponseDTO> cadastrarFuncionario() async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();

      UserDTO storeEmployee = UserDTO(
        name: form.control('nome').value,
        password: form.control('senha').value,
        username: form.control('usuario').value,
        photo: "https://cdn.dribbble.com/users/160155/screenshots/1526505/media/617bae5c11b9b42021065f5a610001dc.png?compress=1&resize=400x300&vertical=top"
      );

      DefaultResponseDTO response = await employeeRepository.createStoreEmployee(preferences.getInt("idStore") ?? -1, storeEmployee);

      Modular.to.navigate("/home/");
      return response;
    } catch (exception) {
      print(exception);
      return DefaultResponseDTO();
    }
  }

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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AvatarProfileWidget(),
                  const SizedBox(height: 30),
                  Column(
                    children: const [
                      InputTextWidget(label: "Nome", formControlName: "nome"),
                      SizedBox(height: 15),
                      InputTextWidget(
                          label: "Usuário  de login",
                          formControlName: "usuario"),
                      SizedBox(height: 15),
                      InputTextWidget(label: "Senha", formControlName: "senha"),
                      SizedBox(height: 15),
                    ],
                  ),
                  ButtonWidget(text: "Salvar", onPressed: () => cadastrarFuncionario(),),
                  const SizedBox(height: 15),
                  const RouterButtonWidget(text: "Cancelar", route: "/home/"),
                ],
              ),
            ),
          ),
        ));
  }
}
