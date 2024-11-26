import 'dart:ffi';

import 'package:adopt_me/constants/images_assets.dart';
import 'package:adopt_me/views/pet_details.dart';
import 'package:flutter/material.dart';

class CardPet extends StatelessWidget {
  final String name;
  final String image;
  const CardPet({
    super.key,
    required this.name,
    required this.image
  });


  @override
  Widget build(BuildContext context) {
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
                Image.asset(AppImages.dog1),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(name,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          const Row(
                            children: [
                              Text(
                                "1 Year",
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
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const PetDetails()));
      },
    );
  }
}
