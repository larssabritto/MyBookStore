import 'package:mybookstore/app/dtos/book/create_book/create_store_book.response.dto.dart';
import 'package:mybookstore/app/dtos/book/create_book/store_book.request.dto.dart';
import 'package:mybookstore/app/dtos/book/get_book/get_store_book.response.dto.dart';
import 'package:mybookstore/app/dtos/default.response.dto.dart';

abstract class IBookRepository {
  Future<CreateStoreBookResponseDTO> createStoreBook(int idStore, StoreBookRequestDTO book);
  Future<DefaultResponseDTO> updateStoreBook(int idStore, int idBook, StoreBookRequestDTO book);
  Future<GetStoreBookResponseDTO> getStoreBook(int idStore, int idBook);
  Future<DefaultResponseDTO> deleteStoreBook(int idStore, int idBook);
  Future<List<GetStoreBookResponseDTO>> searchStoreBooks(int idStore, {Map<String, dynamic>? filters});
}