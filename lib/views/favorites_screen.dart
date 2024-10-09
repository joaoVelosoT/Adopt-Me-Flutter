import 'package:adopt_me/widgets/bottom_navigator_widget.dart';
import 'package:adopt_me/widgets/card_pets.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

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

    return  Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Favorites", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 40),),
            Icon(Icons.pets, color: Colors.pink,size: 40 ,)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                itemCount: dogs.length, //qtd de produtos
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return const CardPet();
                },
              ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigatorWidget(),
    );
  }
}