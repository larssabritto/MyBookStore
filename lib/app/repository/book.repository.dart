import 'package:dio/dio.dart';
import 'package:mybookstore/app/core/http/handlers/error_handler.dart';
import 'package:mybookstore/app/core/services/book.service.dart';
import 'package:mybookstore/app/dtos/book/create_book/create_store_book.response.dto.dart';
import 'package:mybookstore/app/dtos/book/create_book/store_book.request.dto.dart';
import 'package:mybookstore/app/dtos/book/get_book/get_store_book.response.dto.dart';
import 'package:mybookstore/app/dtos/default.response.dto.dart';
import 'package:mybookstore/app/repository/contracts/ibook.repository.dart';

class BookRepository implements IBookRepository {
  final BookService _bookService = BookService();

  @override
  Future<CreateStoreBookResponseDTO> createStoreBook(
      int idStore, StoreBookRequestDTO book) async {
    try {
      Response response = await _bookService.createStoreBook(idStore, book);
      return CreateStoreBookResponseDTO.fromJson(response.data);
    } catch (exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

  @override
  Future<DefaultResponseDTO> deleteStoreBook(int idStore, int idBook) async {
    try {
      Response response = await _bookService.deleteStoreBook(idStore, idBook);
      return DefaultResponseDTO.fromJson(response.data);
    } catch (exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

  @override
  Future<GetStoreBookResponseDTO> getStoreBook(int idStore, int idBook) async {
    try {
      Response response = await _bookService.getStoreBook(idStore, idBook);
      return GetStoreBookResponseDTO.fromJson(response.data);
    } catch (exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

  @override
  Future<List<GetStoreBookResponseDTO>> searchStoreBooks(int idStore,{Map<String, dynamic>? filters}) async {
    try {
      Response response = await _bookService.searchStoreBooks(idStore);

      List<GetStoreBookResponseDTO> storeBooks = [];
      response.data.forEach((book) => storeBooks.add(GetStoreBookResponseDTO.fromJson(book)));

      return storeBooks;
    } catch (exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

  @override
  Future<DefaultResponseDTO> updateStoreBook(int idStore, int idBook, StoreBookRequestDTO book) async {
    try {
      Response response = await _bookService.updateStoreBook(idStore, idBook, book);
      return DefaultResponseDTO.fromJson(response.data);
    } catch (exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }
}
