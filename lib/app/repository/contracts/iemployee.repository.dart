import 'package:mybookstore/app/dtos/default.response.dto.dart';
import 'package:mybookstore/app/dtos/employee/get_employee/get_employee.response.dto.dart';
import 'package:mybookstore/app/dtos/user_dto.dart';

abstract class IEmployeeRepository {
  Future<DefaultResponseDTO> createStoreEmployee(int idStore, UserDTO storeEmployee);
  Future<List<GetEmployeeResponseDTO>> listStoreEmployees(int idStore);
  Future<DefaultResponseDTO> updateStoreEmployee(int idStore, int idEmployee, UserDTO storeEmployee);
  Future<DefaultResponseDTO> deleteStoreEmployee(int idStore, int idEmployee);
}