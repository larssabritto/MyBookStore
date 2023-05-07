import 'package:flutter/material.dart';
import 'package:mybookstore/app/dtos/employee/get_employee/get_employee.response.dto.dart';

class FuncionarioListItem extends StatelessWidget {
  final GetEmployeeResponseDTO employee;
  const FuncionarioListItem({
    Key? key,
    required this.employee,
  }) : super(key: key);

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
              onPressed: () {},
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
