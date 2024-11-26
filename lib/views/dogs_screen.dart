import 'package:adopt_me/widgets/app_bar_widget.dart';
import 'package:adopt_me/widgets/bottom_navigator_widget.dart';
import 'package:adopt_me/widgets/card_pets.dart';
import 'package:adopt_me/widgets/categorias_container.dart';
import 'package:flutter/material.dart';

class DogsScreen extends StatelessWidget {
  
  const DogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const dogs = [
      {
        "imagem" : "",
        "idade" : "3",
      },
      {
        "imagem" : "",
        "idade" : "3",
      },
      {
        "imagem" : "",
        "idade" : "3",
      },
      {
        "imagem" : "",
        "idade" : "3",
      },
      {
        "imagem" : "",
        "idade" : "3",
      },
      {
        "imagem" : "",
        "idade" : "3",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dogs"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const CategoriasContainer(),
            GridView.builder(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dogs.length, //qtd de produtos
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  // return const CardPet(name: 'nome da api',);
                },
              ),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomNavigatorWidget(),
    );
  }
}