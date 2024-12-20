import 'dart:convert';

import 'package:adopt_me/constants/images_assets.dart';
import 'package:adopt_me/views/add_pet.dart';
import 'package:adopt_me/views/edit_profile.dart';
import 'package:adopt_me/views/favorites_screen.dart';
import 'package:adopt_me/views/log_in.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:http/http.dart' as http;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

String nameUser = "";
String emailUser = "";

class _ProfileScreenState extends State<ProfileScreen> {
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
    var response = await client
        .get(Uri.parse(url), headers: {'Authorization': 'bearer ${token}'});
    var responseData = jsonDecode(response.body);
    // print(localStorage.getItem("token"));
    print(responseData['user']['name']);
    setState(() {
      nameUser = responseData['user']['name'];
      emailUser = responseData['user']['email'];
    });
  }

  void initState() {
    // TODO: implement initState
    getUser();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "Profile",
            //   style: TextStyle(
            //     fontSize: 25,
            //   ),
            // ),
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
                            Row(
                              children: [
                                Text(
                                  nameUser,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.email,
                                    color: Color.fromRGBO(72, 72, 72, 0.612),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text(
                                      emailUser,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromRGBO(
                                              72, 72, 72, 0.612)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
                    ElevatedButton(
                      style: ButtonStyle(
                          elevation: WidgetStatePropertyAll(0),
                          backgroundColor: WidgetStatePropertyAll(
                              const Color.fromARGB(0, 255, 255, 255))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EditProfile()));
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
              style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(0),
                  backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(0, 255, 255, 255))),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddPet()));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        const Icon(
                          Icons.pets,
                          size: 35,
                          color: Color.fromRGBO(72, 72, 72, 0.612),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: const Row(
                              children: [
                                Text(
                                  "Adopt Your pet",
                                  style: TextStyle(fontSize: 20),
                                ),
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
              style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(0),
                  backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(0, 255, 255, 255))),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FavoritesScreen()));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        const Icon(
                          Icons.favorite,
                          size: 35,
                          color: Color.fromRGBO(72, 72, 72, 0.612),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: const Row(
                              children: [
                                Text(
                                  "My pets",
                                  style: TextStyle(fontSize: 20),
                                ),
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
              style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(0),
                  backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(0, 255, 255, 255))),
              onPressed: () {},
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          size: 35,
                          color: Color.fromRGBO(72, 72, 72, 0.612),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: const Row(
                              children: [
                                Text(
                                  "Settings",
                                  style: TextStyle(fontSize: 20),
                                ),
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
              style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(0),
                  backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(0, 255, 255, 255))),
              onPressed: () {},
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        const Icon(
                          Icons.info,
                          size: 35,
                          color: Color.fromRGBO(72, 72, 72, 0.612),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: const Row(
                              children: [
                                Text(
                                  "About us",
                                  style: TextStyle(fontSize: 20),
                                ),
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
