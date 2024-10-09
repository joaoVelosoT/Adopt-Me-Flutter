import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Edit your profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: TextField(
                          decoration: InputDecoration(
                              icon: Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: const Icon(
                                    Icons.person,
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
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: TextField(
                          decoration: InputDecoration(
                              icon: Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: const Icon(
                                    Icons.email,
                                    size: 25,
                                    color: Color.fromRGBO(42, 42, 42, 0.612),
                                  )),
                              hintText: "Email",
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
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: TextField(
                          decoration: InputDecoration(
                              icon: Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: const Icon(
                                    Icons.lock,
                                    size: 25,
                                    color: Color.fromRGBO(42, 42, 42, 0.612),
                                  )),
                              hintText: "Password",
                              hintStyle: const TextStyle(
                                  color: Color.fromRGBO(42, 42, 42, 0.612)),
                              border: InputBorder.none
                              // border
                              ),
                        ),
                        
              ),
            ),
          ],
        ),
      ),
    );
  }
}