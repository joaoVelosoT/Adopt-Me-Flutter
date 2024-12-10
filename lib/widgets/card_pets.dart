import 'dart:ffi';

import 'package:adopt_me/constants/images_assets.dart';
import 'package:adopt_me/views/pet_details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CardPet extends StatefulWidget {
  final String name;
  final List<dynamic> images;
  final int age;
  final double weight;
  final String color;
  // final List<String> images;
  const CardPet(
      {super.key,
      required this.name,
      required this.images,
      required this.age,
      required this.weight,
      required this.color});

  @override
  State<CardPet> createState() => CardPetState();
}

class CardPetState extends State<CardPet> {
  initState() {
    super.initState();
    // teste();
  }

  // void teste() async {
  //   // print("testetesad");
  //   var response = await http.head(Uri.parse(widget.images[0]));
  //   print(response.body);
  //   if (response.statusCode != 200) {
  //     setState(() {
  //       widget.images[0] =
  //           "https://cdn-icons-png.flaticon.com/512/3142/3142945.png";
  //     });
  //   }
  // }

  Widget build(BuildContext context) {
    // print(images[0].toString());
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: 125,
            height: 260,
            decoration: BoxDecoration(
                border: Border.all(width: 0.3),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  widget.images[0].toString(),
                  height: 100,
                  width: 220,
                  fit: BoxFit.cover,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(widget.name,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                           Row(
                            children: [
                              Text(
                                "${widget.age} Year",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(72, 72, 72, 0.612)),
                              ),
                              Icon(
                                Icons.male,
                                color: Colors.blue,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PetDetails(
                  name: widget.name,
                  image: widget.images[0].toString(),
                  weight: widget.weight,
                  color: widget.color,
                  age: widget.age,
                )));
      },
    );
  }
}
