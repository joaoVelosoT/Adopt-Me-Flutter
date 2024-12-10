import 'dart:convert';

import 'package:adopt_me/widgets/bottom_navigator_widget.dart';
import 'package:adopt_me/widgets/card_pets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<Map<String, dynamic>> pets = [];

  void getPets() async {
    var client = http.Client();
    await initLocalStorage();

    var token = localStorage.getItem("token");

    if (token == null) {
      print("não chegou o token");
    }
    var url = 'https://pet-adopt-dq32j.ondigitalocean.app/pet/mypets';

    try {
      var response = await client
          .get(Uri.parse(url), headers: {'Authorization': 'Bearer ${token}'});

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

  void initState() {
    getPets();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My pets",
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Icon(
              Icons.pets,
              color: Colors.pink,
              size: 40,
            )
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
              itemCount: pets.length, //qtd de produtos
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                List<dynamic> images = pets[index]['images'];

                // Teste se retornou ao commit antigo
                // print(images);
                return CardPet(
                  name: pets[index]['name'],
                  images: images,
                  age: pets[index]['age'],
                  weight: pets[index]['weight'].toDouble(),
                  color: pets[index]['color'],
                );
              },
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigatorWidget(),
    );
  }
}
