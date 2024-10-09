import 'package:adopt_me/constants/images_assets.dart';
import 'package:adopt_me/views/add_pet.dart';
import 'package:adopt_me/views/edit_profile.dart';
import 'package:adopt_me/views/favorites_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Profile",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.5),
                      bottom: BorderSide(width: 0.5))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        // width: 200,
                        child: Row(
                      children: [
                        Image.asset(AppImages.personIcon),
                        Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "João Vitor",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color.fromRGBO(72, 72, 72, 0.612),
                                  ),
                                  Text(
                                    "São Paulo, Brasil",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(72, 72, 72, 0.612)),
                                  ),
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      ],
                    )),
                    ElevatedButton(
          style: ButtonStyle(elevation: WidgetStatePropertyAll(0), backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(0, 255, 255, 255))),

                      onPressed: () { 
                             Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => EditProfile()));
                       },
                      child: const Icon(
                        Icons.edit_note_rounded,
                        size: 40,
                      ),
                    )
                  ],
                ),
              ),
            ),

            ElevatedButton(
          style: ButtonStyle(elevation: WidgetStatePropertyAll(0), backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(0, 255, 255, 255))),
              
              onPressed: () { 
                Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddPet()));
               },
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Row(
                      children: [
                        const Icon(Icons.pets, size: 35,color: Color.fromRGBO(72, 72, 72, 0.612),),
                        Container(
                      margin: EdgeInsets.only(left: 20),
                      child: const Row(
                        children: [
                          Text("Adopt Your pet", style: TextStyle(fontSize: 20),),
                        ],
                      )),
                      ],
                    )),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_forward_ios_sharp))
              
                  ],
                ),
              ),
            ),
            ElevatedButton(
          style: ButtonStyle(elevation: WidgetStatePropertyAll(0), backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(0, 255, 255, 255))),

              onPressed: () { 
                Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FavoritesScreen()));
 
               },
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Row(
                      children: [
                        const Icon(Icons.favorite, size: 35,color: Color.fromRGBO(72, 72, 72, 0.612),),
                        Container(
                      margin: EdgeInsets.only(left: 20),
                      child: const Row(
                        children: [
                          Text("Pets Favorites", style: TextStyle(fontSize: 20),),
                        ],
                      )),
                      ],
                    )),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_forward_ios_sharp))
              
                  ],
                ),
              ),
            ),

            ElevatedButton(
          style: ButtonStyle(elevation: WidgetStatePropertyAll(0), backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(0, 255, 255, 255))),

              onPressed: () {  },
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Row(
                      children: [
                        const Icon(Icons.settings, size: 35,color: Color.fromRGBO(72, 72, 72, 0.612),),
                        Container(
                      margin: EdgeInsets.only(left: 20),
                      child: const Row(
                        children: [
                          Text("Settings", style: TextStyle(fontSize: 20),),
                        ],
                      )),
                      ],
                    )),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_forward_ios_sharp))
              
                  ],
                ),
              ),
            ),
            ElevatedButton(
          style: ButtonStyle(elevation: WidgetStatePropertyAll(0), backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(0, 255, 255, 255))),

              onPressed: () {  },
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Row(
                      children: [
                        const Icon(Icons.info, size: 35,color: Color.fromRGBO(72, 72, 72, 0.612),),
                        Container(
                      margin: EdgeInsets.only(left: 20),
                      child: const Row(
                        children: [
                          Text("About us", style: TextStyle(fontSize: 20),),
                        ],
                      )),
                      ],
                    )),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_forward_ios_sharp))
              
                  ],
                ),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
