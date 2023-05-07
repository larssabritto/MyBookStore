import 'package:flutter/material.dart';

class ExibirLivros extends StatelessWidget {
  const ExibirLivros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff08182A),
        title: Text('Livros'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
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
          SizedBox(height: 12,),
          ElevatedButton(
            onPressed: () {},
            child: Text('Editar'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff08182A)),
              shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              )),
            ),

          ),
          TextButton(
            onPressed: () {},
            child: Text('Excluir'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Color(0xff08182A)),
            ),
          ),
        ],
      ),
    );
  }
}


