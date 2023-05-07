
import 'package:flutter/material.dart';
import 'package:mybookstore/app/entities/book.entity.dart';

class BannerWidget extends StatelessWidget {
  final Book book;
  final double bannerHeight = 200.0;
  final double avatarHeight = 90.0;

  const BannerWidget({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
        child:
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    SizedBox(
                    width: double.infinity,
                    height: bannerHeight,
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage("https://images.ecycle.com.br/wp-content/uploads/2021/05/03122127/pietro-de-grandi-T7K4aEPoGGk-unsplash-1024x683.jpg.webp")),
                      ),
                    ),
                  ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: IconButton(
                          color: const Color(0xff08182A),
                            onPressed: () {},
                            icon: const Icon(Icons.edit_rounded)),
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: bannerHeight - avatarHeight / 2,
                  child: Container(
                    width: 90.0,
                    height: 90.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://photografos.com.br/wp-content/uploads/2020/09/fotografia-para-perfil.jpg"),
                      ),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
