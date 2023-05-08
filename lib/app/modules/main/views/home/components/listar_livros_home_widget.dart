import 'package:flutter/material.dart';

class ListarLivrosHome extends StatelessWidget {
  ListarLivrosHome({Key? key}) : super(key: key);

  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff08182A),
        title: const Text('Livros'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Image.network(
            'https://m.media-amazon.com/images/I/41XbfSiYscL._SX348_BO1,204,203,200_.jpg',
            height: 240,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Nome do Livro',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xff08182A),
            ),
          ),
          const Text(
            'Autorasdasd',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff08182A),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Sinópse',
            style: TextStyle(
                color: Color(0xff08182A), fontWeight: FontWeight.bold),
          ),
          const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sapien sapien, efficitur sed odio at, vulputate tincidunt velit. Aliquam erat volutpat.'),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Publicado em',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('11/02/1996'),
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
                    color: Color(0xff08182A), fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.star),
                    color: const Color(0xff08182A),
                  ),
                  const Text(
                    '4.9',
                    style: TextStyle(
                        color: Color(0xff08182A), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Switch(
                value: light,
                onChanged: (bool value) {},
              ),
              const Text(
                'Em estoque',
                style: TextStyle(
                    color: Color(0xff08182A), fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
