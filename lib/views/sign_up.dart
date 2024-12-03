import 'dart:convert';
import 'dart:io';

import 'package:adopt_me/constants/images_assets.dart';
import 'package:adopt_me/views/home_screen.dart';
import 'package:adopt_me/views/log_in.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String msgErro = "" ;
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPassController = TextEditingController();

    void cadastro() async {
      await initLocalStorage();
      print(localStorage.getItem("token"));
      // localStorage.clear();
      var data = {
        "name": nameController.text,
        "phone": phoneController.text,
        "email": emailController.text,
        "password": passwordController.text,
        "confirmpassword": confirmPassController.text
      };

      // print(data);

      var client = http.Client();

      var url = "https://pet-adopt-dq32j.ondigitalocean.app/user/register";

      try {
        var response = await client.post(Uri.parse(url),
            headers: {'Content-Type': 'application/json'},
            body: json.encode(data));

        var responseData = jsonDecode(response.body);

        if (responseData['token'] != null) {
          localStorage.setItem("token", responseData['token']);
          localStorage.setItem("_idUser", responseData['userId']);

          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen()));
        }

        setState(() {
          msgErro = responseData['message'];
        });

        

        print(responseData);

        // if (responseData['sucess'] != true) {
        //   print(responseData['message']);

        //   setState(() {msgErro = responseData['message'];});
        // }
      } finally {
        client.close();
      }
    }

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Sign up",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: const Row(
                          children: [
                            Text(
                              "Nome",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.pink),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                              icon: Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: const Icon(
                                    Icons.email_outlined,
                                    size: 25,
                                    color: Color.fromRGBO(42, 42, 42, 0.612),
                                  )),
                              hintText: "Digite seu nome",
                              hintStyle: const TextStyle(
                                  color: Color.fromRGBO(42, 42, 42, 0.612)),
                              border: InputBorder.none
                              // border
                              ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: const Row(
                          children: [
                            Text(
                              "Telefone",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.pink),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: phoneController,
                          decoration: InputDecoration(
                              icon: Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: const Icon(
                                    Icons.email_outlined,
                                    size: 25,
                                    color: Color.fromRGBO(42, 42, 42, 0.612),
                                  )),
                              hintText: "Digite seu telefone",
                              hintStyle: const TextStyle(
                                  color: Color.fromRGBO(42, 42, 42, 0.612)),
                              border: InputBorder.none
                              // border
                              ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: const Row(
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.pink),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              icon: Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: const Icon(
                                    Icons.email_outlined,
                                    size: 25,
                                    color: Color.fromRGBO(42, 42, 42, 0.612),
                                  )),
                              hintText: "abc@email.com",
                              hintStyle: const TextStyle(
                                  color: Color.fromRGBO(42, 42, 42, 0.612)),
                              border: InputBorder.none
                              // border
                              ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: const Row(
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(top: 50),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.pink),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              icon: Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: const Icon(
                                    Icons.lock_outline,
                                    size: 25,
                                    color: Color.fromRGBO(42, 42, 42, 0.612),
                                  )),
                              hintText: "******",
                              hintStyle: const TextStyle(
                                  color: Color.fromRGBO(42, 42, 42, 0.612)),
                              border: InputBorder.none
                              // border
                              ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: const Row(
                          children: [
                            Text(
                              "Confirm Password",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(top: 50),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.pink),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: confirmPassController,
                          decoration: InputDecoration(
                              icon: Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: const Icon(
                                    Icons.lock_outline,
                                    size: 25,
                                    color: Color.fromRGBO(42, 42, 42, 0.612),
                                  )),
                              hintText: "******",
                              hintStyle: const TextStyle(
                                  color: Color.fromRGBO(42, 42, 42, 0.612)),
                              border: InputBorder.none
                              // border
                              ),
                        ),
                      ),
                        Text(msgErro),
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: ElevatedButton(
                            onPressed: () {
                              cadastro();
                            },
                            style: const ButtonStyle(
                              fixedSize:
                                  WidgetStatePropertyAll(Size.fromWidth(207)),
                              padding:
                                  WidgetStatePropertyAll(EdgeInsets.all(15)),
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromRGBO(255, 62, 154, 100)),
                              // backgroundColor: Color.fromRGBO(255, 62, 154, 100)
                            ),
                            child: const Text(
                              "Create an account",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(AppImages.googleIcon),
                            Image.asset(AppImages.facebookIcon),
                            Image.asset(AppImages.twitterIcon)
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              GestureDetector(
                                child: Text(" Login",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(255, 62, 154, 100),
                                        fontSize: 14)),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => LogIn()));
                                },
                              )
                            ],
                          ))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
