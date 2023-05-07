import 'package:mybookstore/app/core/http/http_client.dart';
import 'package:mybookstore/app/dtos/user_dto.dart';

class EmployeeService {
  final HttpClient _httpClient = HttpClient();

  Future createStoreEmployee(int idStore, UserDTO storeEmployee) async {
    return await _httpClient.post('/store/$idStore/employee', storeEmployee);
  }

  Future listStoreEmployees(int idStore) async {
    return await _httpClient.get('/store/$idStore/employee');
  }

  Future updateStoreEmployee(int idStore, int idEmployee, UserDTO storeEmployee) async {
    return await _httpClient.put('/store/$idStore/employee/$idEmployee', storeEmployee);
  }

  Future deleteStoreEmployee(int idStore, int idEmployee) async {
    return await _httpClient.delete('/store/$idStore/employee/$idEmployee');
  }
  
}
