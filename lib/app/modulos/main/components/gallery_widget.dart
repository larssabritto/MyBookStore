import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mybookstore/app/entities/book.entity.dart';

class GalleryWidget extends StatelessWidget {
  final Book book;

  const GalleryWidget ({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          children: [
            Container(
              height: 120,
              child: InkWell(
                onTap: () {
                  Modular.to.pushNamed('/home/listar');
                },
                child: Image.network(
                  book.cover ?? "",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.title ?? "",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(book.author ?? ""),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(book.year.toString()),
                Row(
                  children: [
                    const Icon(Icons.star),
                    Text(book.rating.toString()),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}