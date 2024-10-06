import 'package:adopt_me/views/dogs_screen.dart';
import 'package:adopt_me/views/pet_details.dart';
import 'package:adopt_me/widgets/characters_pet.dart';
import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {

  final String nome;
  
  const Categoria({
    super.key,
    required this.nome
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          width: 80,
          margin: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              color: Colors.pink,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(10),
          child:  Text(nome,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center)),
              onTap: () {
                      Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const DogsScreen()));
              },
    );
  }
}