import 'package:flutter/material.dart';
import 'package:mybookstore/app/modulos/main/components/gallery_widget.dart';
import 'package:mybookstore/app/repository/livros.repository.dart';

class LivrosBodyWidget extends StatelessWidget {
  const LivrosBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
        child: Column(children: [Expanded(
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 12),
              itemCount: bookListMock.length,
              itemBuilder: (BuildContext context, int index) {
                return GalleryWidget(book: bookListMock[index]);
              },
            ),
          ),
        ),],)
      ),
    );
  }
}
