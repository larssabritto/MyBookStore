
import 'package:flutter/material.dart';
import 'package:mybookstore/app/dtos/store/get_store/get_store_response.dto.dart';

class BannerWidget extends StatelessWidget {
  final GetStoreResponseDTO _store;
  final double bannerHeight = 200.0;
  final double avatarHeight = 90.0;
  final String profilePhoto;

  const BannerWidget({Key? key, required GetStoreResponseDTO book, required this.profilePhoto}) : _store = book, super(key: key);

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
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(_store.banner ?? "")),
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(profilePhoto),
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
