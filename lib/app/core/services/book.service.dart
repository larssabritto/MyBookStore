import 'package:mybookstore/app/core/http/http_client.dart';
import 'package:mybookstore/app/dtos/book/create_book/store_book.request.dto.dart';

class BookService {
  final HttpClient _httpClient = HttpClient();

  Future createStoreBook(int idStore, StoreBookRequestDTO book) async {
    return await _httpClient.post('/store/$idStore/book', book);
  }

  Future updateStoreBook(int idStore, int idBook, StoreBookRequestDTO book) async {
    return await _httpClient.put('/store/$idStore/book/$idBook', book);
  }

  Future getStoreBook(int idStore, int idBook) async {
    return await _httpClient.get('/store/$idStore/book/$idBook');
  }

  Future deleteStoreBook(int idStore, int idBook) async {
    return await _httpClient.delete('/store/$idStore/book/$idBook');
  }

  Future searchStoreBooks(int idStore, {Map<String, dynamic>? filters}) async {
    return await _httpClient.get('/store/$idStore/book', params: filters);
  }
}