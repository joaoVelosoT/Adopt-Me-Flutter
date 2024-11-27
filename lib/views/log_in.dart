import 'dart:convert';

import 'package:adopt_me/constants/images_assets.dart';
import 'package:adopt_me/views/home_screen.dart';
import 'package:adopt_me/views/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// import 'package:http/http.dart' as http;

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String msgErro = "";
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    void fazerLogin() async {
      
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        return setState(() => {
          msgErro = "Valide seus dados"
        });
      }

      var client = http.Client();
      var url = 'https://pet-adopt-dq32j.ondigitalocean.app/user/login';
      var data = {
        "email": emailController.text,
        "password": passwordController.text
      };
      try {
        var response = await client.post(Uri.parse(url),
            headers: {'Content-Type': 'application/json'},
            body: json.encode(data));
        var responseData = jsonDecode(response.body);
        print(responseData['success']);

        if (responseData['sucess'] != true) {
          print(responseData['message']);

          setState(() {msgErro = responseData['message'];});
        }
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
                    "Log in",
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
                        margin: EdgeInsets.only(bottom: 5, top: 30),
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
                      Text(msgErro),
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: ElevatedButton(
                            onPressed: () {
                              fazerLogin();
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => HomeScreen()));
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
                              "Log in",
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
                                "Don't have an account?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              GestureDetector(
                                child: Text(" Create",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(255, 62, 154, 100),
                                        fontSize: 14)),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SignUp()));
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
