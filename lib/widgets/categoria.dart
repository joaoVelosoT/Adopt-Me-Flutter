import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {

  final String nome;
  
  const Categoria({
    super.key,
    required this.nome
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        margin: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            color: Colors.pink,
            // border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(10),
        child:  Text(nome,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center));
  }
}