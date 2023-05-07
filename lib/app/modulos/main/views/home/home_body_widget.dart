import 'package:flutter/material.dart';
import 'package:mybookstore/app/components/livros_list_item.dart';
import 'package:mybookstore/app/modulos/main/components/gallery_widget.dart';
import 'package:mybookstore/app/repository/livros.repository.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Color(0xff08182A),),
                      hintText: 'Buscar',
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                SearchfilterWidget(),
              ],
            ),
            Expanded(
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
            ),
          ],
        ),
      ),
    );
  }
}
