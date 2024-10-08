import 'package:adopt_me/constants/images_assets.dart';
import 'package:adopt_me/widgets/app_bar_widget.dart';
import 'package:adopt_me/widgets/bottom_navigator_widget.dart';
import 'package:adopt_me/widgets/card_pets.dart';
import 'package:adopt_me/widgets/categoria.dart';
import 'package:adopt_me/widgets/categorias_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppImages.dogsHome),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20),
              child: const Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const CategoriasContainer(),

  
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 5, left: 20),
              child: const Row(
                children: [
                  Text(
                    "Popular pets",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

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
              

          //  const BottomNavigationBarExample()
          ],
          
        ),
          
      ),
      
      bottomNavigationBar: BottomNavigatorWidget(), 
    );
  }
 
}