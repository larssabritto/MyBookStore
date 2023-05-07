import 'package:flutter/material.dart';

class AvatarProfileWidget extends StatelessWidget {
  const AvatarProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                "Novo Funcionario",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff08182A),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(
                    "https://photografos.com.br/wp-content/uploads/2020/09/fotografia-para-perfil.jpg",
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
