import 'package:flutter/material.dart';
import 'package:mybookstore/app/dtos/book/get_book/get_store_book.response.dto.dart';
import 'package:mybookstore/app/modules/main/components/gallery_widget.dart';
import 'package:mybookstore/app/repository/book.repository.dart';
import 'package:mybookstore/app/repository/contracts/ibook.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LivrosBodyWidget extends StatelessWidget {
  final IBookRepository _bookRepository = BookRepository();

  LivrosBodyWidget({Key? key}) : super(key: key);

  Future<List<GetStoreBookResponseDTO>> getStoreBooks() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    List<GetStoreBookResponseDTO> storeBooks = await _bookRepository
        .searchStoreBooks(sharedPreferences.getInt("idStore") ?? -1);
    return storeBooks;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getStoreBooks(),
        builder:
            (context, AsyncSnapshot<List<GetStoreBookResponseDTO>> storeBooks) {
          if (storeBooks.hasData) {
            return Padding(
                padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
                child: Column(
                  children: [
                    Expanded(
                      child:
                          NotificationListener<OverscrollIndicatorNotification>(
                        onNotification: (overscroll) {
                          overscroll.disallowIndicator();
                          return true;
                        },
                        child: ListView.builder(
                          padding: const EdgeInsets.only(top: 12),
                          itemCount: storeBooks.data!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GalleryWidget(book: storeBooks.data![index]);
                          },
                        ),
                      ),
                    ),
                  ],
                ));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
