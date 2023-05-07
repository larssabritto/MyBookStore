import 'package:flutter/material.dart';

class ListarLivrosHome extends StatelessWidget {
   ListarLivrosHome({Key? key}) : super(key: key);

  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff08182A),
        title: Text('Livros'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Image.network(
            'https://m.media-amazon.com/images/I/41XbfSiYscL._SX348_BO1,204,203,200_.jpg',
            height: 240,
          ),
          SizedBox(height: 12,),
          Text(
            'Nome do Livro',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xff08182A),
            ),
          ),
          Text(
            'Autor',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff08182A),
            ),
          ),
          SizedBox(height: 24,),
          Text(
            'Sinópse',
            style: TextStyle(
                color: Color(0xff08182A),
                fontWeight: FontWeight.bold),
          ),
          Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sapien sapien, efficitur sed odio at, vulputate tincidunt velit. Aliquam erat volutpat.'),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Publicado em',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('11/02/1996'),
            ],
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Avaliação',
                style: TextStyle(
                    color: Color(0xff08182A),
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton( onPressed: () {}, icon: Icon(Icons.star),
                    color:  Color(0xff08182A),
                  ),
                  Text('4.9',
                    style: TextStyle(
                        color: Color(0xff08182A),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Switch(
                value: light,
                onChanged: (bool value) {},
              ),
              Text('Em estoque',
                style: TextStyle(
                    color: Color(0xff08182A),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
