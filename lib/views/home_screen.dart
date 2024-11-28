import 'dart:convert';

import 'package:adopt_me/constants/images_assets.dart';
import 'package:adopt_me/views/log_in.dart';
import 'package:adopt_me/widgets/app_bar_widget.dart';
import 'package:adopt_me/widgets/bottom_navigator_widget.dart';
import 'package:adopt_me/widgets/card_pets.dart';
import 'package:adopt_me/widgets/categoria.dart';
import 'package:adopt_me/widgets/categorias_container.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> pets = [];

  @override
  void getPets() async {
    var client = http.Client();

    var url = 'https://pet-adopt-dq32j.ondigitalocean.app/pet/pets';

    try {
      var response = await client.get(
        Uri.parse(url),
      );

      var responseData = jsonDecode(response.body);

      // print(responseData['pets']);
      print("element");

      for (var element in responseData['pets']) {
        setState(() {
          pets.add(element);
        });
      }
    } finally {
      client.close();
    }
  }

  void getUser() async {
    await initLocalStorage();

    var client = http.Client();

    var idUser = localStorage.getItem("_idUser");
    var token = localStorage.getItem("token");

    if (idUser == null || token == null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LogIn()));
    }

    var url =
        "https://pet-adopt-dq32j.ondigitalocean.app/user/${idUser.toString()}";
    var response = await client.get(Uri.parse(url));

    // print(localStorage.getItem("token"));
    print(response.body);
  }

  void initState() {
    // TODO: implement initState
    getUser();

    // getPets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(pets.length);
    // getPets();

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
              itemCount: pets.length, //qtd de produtos
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                List<dynamic> images = pets[index]['images'];

                // Teste se retornou ao commit antigo
                // print(images);
                return CardPet(name: pets[index]['name'], images: images);
              },
            ),

            //  const BottomNavigationBarExample()
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigatorWidget(),
    );
  }
}
