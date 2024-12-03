import 'dart:convert';

import 'package:adopt_me/views/log_in.dart';
import 'package:adopt_me/widgets/bottom_navigator_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';

class AddPet extends StatefulWidget {
  AddPet({super.key});

  @override
  State<AddPet> createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController weightController = TextEditingController();
    TextEditingController colorController = TextEditingController();
    TextEditingController imageController = TextEditingController();

    String msgError = "";

    void addPet() async {
      await initLocalStorage();
      var token = localStorage.getItem("token");

      if (token == null) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LogIn()));
      }

      var client = http.Client();
      var url = "https://pet-adopt-dq32j.ondigitalocean.app/pet/create";
      var data = {
        "name": nameController.text,
        "color": colorController.text,
        "weight": weightController.text,
        "age": ageController.text,
        "images": [imageController.text]
      };

      try {
        print(json.encode(data));
        var response = await client.post(Uri.parse(url),
            body: json.encode(data),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer ${token}'
            });
        print(response.body);

        setState(() {
          msgError = response.body;
        });
      } catch (e) {
        print(e);
      } finally {
        client.close();
      }
    }

    ;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Add pet",
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.pink),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      icon: Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: const Icon(
                            Icons.text_fields,
                            size: 25,
                            color: Color.fromRGBO(42, 42, 42, 0.612),
                          )),
                      hintText: "Name",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(42, 42, 42, 0.612)),
                      border: InputBorder.none
                      // border
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.pink),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                      icon: Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: const Icon(
                            Icons.calendar_month,
                            size: 25,
                            color: Color.fromRGBO(42, 42, 42, 0.612),
                          )),
                      hintText: "Age",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(42, 42, 42, 0.612)),
                      border: InputBorder.none
                      // border
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.pink),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: weightController,
                  decoration: InputDecoration(
                      icon: Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: const Icon(
                            Icons.pets,
                            size: 25,
                            color: Color.fromRGBO(42, 42, 42, 0.612),
                          )),
                      hintText: "Weight",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(42, 42, 42, 0.612)),
                      border: InputBorder.none
                      // border
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.pink),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: colorController,
                  decoration: InputDecoration(
                      icon: Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: const Icon(
                            Icons.pets,
                            size: 25,
                            color: Color.fromRGBO(42, 42, 42, 0.612),
                          )),
                      hintText: "Color",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(42, 42, 42, 0.612)),
                      border: InputBorder.none
                      // border
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.pink),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: imageController,
                  decoration: InputDecoration(
                      icon: Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: const Icon(
                            Icons.pets,
                            size: 25,
                            color: Color.fromRGBO(42, 42, 42, 0.612),
                          )),
                      hintText: "Image",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(42, 42, 42, 0.612)),
                      border: InputBorder.none
                      // border
                      ),
                ),
              ),
            ),
            Text(msgError),
            Container(
              width: 200,
              decoration: BoxDecoration(
                  // border: Border.all(width: 2),
                  // borderRadius: BorderRadius.circular(233)
                  ),
              child: ElevatedButton(
                onPressed: () {
                  addPet();
                },
                child: const Text(
                  "Add pet",
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      // side: 1,
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(width: 1, color: Colors.pink),

                      // Sem bordas arredondadas
                    ),
                    backgroundColor: Colors.white),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigatorWidget(),
    );
  }
}
