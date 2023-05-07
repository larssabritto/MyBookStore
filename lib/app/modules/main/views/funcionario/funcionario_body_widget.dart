import 'package:flutter/material.dart';
import 'package:mybookstore/app/dtos/employee/get_employee/get_employee.response.dto.dart';
import 'package:mybookstore/app/repository/contracts/iemployee.repository.dart';
import 'package:mybookstore/app/repository/employee.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/novo_funcionario_widget.dart';

class FuncionariosBodyWidget extends StatelessWidget {
  FuncionariosBodyWidget({Key? key}) : super(key: key);

  final IEmployeeRepository _employeeRepository = EmployeeRepository();

  Future<List<GetEmployeeResponseDTO>> getStoreEmployees() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    List<GetEmployeeResponseDTO> storeEmployees = await _employeeRepository
        .listStoreEmployees(preferences.getInt('idStore') ?? -1);

    return storeEmployees;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getStoreEmployees(),
      builder: (context, AsyncSnapshot<List<GetEmployeeResponseDTO>> storeEmployees) {
        if (storeEmployees.hasData) {
          return Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.builder(
                  itemCount: storeEmployees.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FuncionarioListItem(
                      employee: storeEmployees.data![index],
                    );
                  },
                ),
              );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
