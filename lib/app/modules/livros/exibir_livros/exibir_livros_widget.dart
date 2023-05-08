import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/dtos/book/get_book/get_store_book.response.dto.dart';
import 'package:mybookstore/app/repository/book.repository.dart';
import 'package:mybookstore/app/repository/contracts/ibook.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExibirLivros extends StatelessWidget {
  final String? idBook;
  final IBookRepository _bookRepository = BookRepository();

  ExibirLivros({Key? key, String this.idBook = ""}) : super(key: key);

  Future<GetStoreBookResponseDTO> getStoreBook() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    GetStoreBookResponseDTO storeBook = await _bookRepository.getStoreBook(
        preferences.getInt("idStore") ?? -1, int.parse(idBook ?? "-1"));
    
    return storeBook;
  }

  Future<void> deleteStoreBook() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    await _bookRepository.deleteStoreBook(preferences.getInt("idStore") ?? -1, int.parse(idBook ?? "-1"));
    Modular.to.navigate("/home/");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getStoreBook(),
        builder: (context, AsyncSnapshot<GetStoreBookResponseDTO> storeBook) {
          if (storeBook.hasData) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xff08182A),
                title: Text(storeBook.data!.title ?? ""),
                centerTitle: true,
              ),
              body: ListView(
                padding: const EdgeInsets.all(12),
                children: [
                  Image.network(
                    storeBook.data!.cover ?? "",
                    height: 240,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(storeBook.data!.title ?? "",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xff08182A),
                    ),
                  ),
                  Text(
                    storeBook.data!.author ?? "",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xff08182A),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Sinopse',
                    style: TextStyle(
                        color: Color(0xff08182A), fontWeight: FontWeight.bold),
                  ),
                  Text(storeBook.data!.synopsis ?? ""),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Publicado em',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(storeBook.data!.year.toString()),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Avaliação',
                        style: TextStyle(
                            color: Color(0xff08182A),
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.star),
                            color: const Color(0xff08182A),
                          ),
                          Text(
                            storeBook.data!.rating.toString(),
                            style: const TextStyle(
                                color: Color(0xff08182A),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextButton(
                    onPressed: () => deleteStoreBook(),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff08182A)),
                    ),
                    child: const Text('Excluir'),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
