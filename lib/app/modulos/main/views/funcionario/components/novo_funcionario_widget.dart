import 'package:flutter/material.dart';

class FuncionarioListItem extends StatelessWidget {
  const FuncionarioListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 10.0),
              Text("Usuario", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_outline_rounded,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
