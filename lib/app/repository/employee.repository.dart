import 'package:dio/dio.dart';
import 'package:mybookstore/app/core/http/handlers/error_handler.dart';
import 'package:mybookstore/app/core/services/employee.service.dart';
import 'package:mybookstore/app/dtos/default.response.dto.dart';
import 'package:mybookstore/app/dtos/employee/get_employee/get_employee.response.dto.dart';
import 'package:mybookstore/app/dtos/user_dto.dart';
import 'package:mybookstore/app/repository/contracts/iemployee.repository.dart';

class EmployeeRepository implements IEmployeeRepository {

  final EmployeeService _employeeService = EmployeeService();

  @override
  Future<DefaultResponseDTO> createStoreEmployee(int idStore, UserDTO storeEmployee) async {
    try {
      Response response = await _employeeService.createStoreEmployee(idStore, storeEmployee);
      return DefaultResponseDTO.fromJson(response.data);
    } catch(exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

  @override
  Future<DefaultResponseDTO> deleteStoreEmployee(int idStore, int idEmployee) async {
    try {
      Response response = await _employeeService.deleteStoreEmployee(idStore, idEmployee);
      return DefaultResponseDTO.fromJson(response.data);
    } catch(exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

  @override
  Future<List<GetEmployeeResponseDTO>> listStoreEmployees(int idStore) async {
    try {
      Response response = await _employeeService.listStoreEmployees(idStore);
      
      List<GetEmployeeResponseDTO> storeEmployees = [];
      response.data.forEach((employee) => storeEmployees.add(GetEmployeeResponseDTO.fromJson(employee)));

      return storeEmployees;
    } catch(exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

  @override
  Future<DefaultResponseDTO> updateStoreEmployee(int idStore, int idEmployee, UserDTO storeEmployee) async {
    try {
      Response response = await _employeeService.updateStoreEmployee(idStore, idEmployee, storeEmployee);

      return DefaultResponseDTO.fromJson(response.data);
    } catch(exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

}