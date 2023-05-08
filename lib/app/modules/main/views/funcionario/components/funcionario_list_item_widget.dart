import 'package:flutter/material.dart';
import 'package:mybookstore/app/dtos/employee/get_employee/get_employee.response.dto.dart';
import 'package:mybookstore/app/repository/contracts/iemployee.repository.dart';
import 'package:mybookstore/app/repository/employee.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FuncionarioListItem extends StatelessWidget {
  final GetEmployeeResponseDTO employee;
  final IEmployeeRepository employeeRepository = EmployeeRepository();

  FuncionarioListItem({
    Key? key,
    required this.employee,
  }) : super(key: key);

  Future<void> deleteEmployee() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    await employeeRepository.deleteStoreEmployee(preferences.getInt("idStore") ?? -1, employee.id ?? -1);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(employee.photo ?? "")),
            const SizedBox(width: 10.0),
            Text(
              employee.name ?? "",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit_rounded),
            ),
            IconButton(
              onPressed: () => deleteEmployee(),
              icon: const Icon(
                Icons.delete_outline_rounded,
              ),
            ),
          ],
        )
      ],
    );
  }
}
