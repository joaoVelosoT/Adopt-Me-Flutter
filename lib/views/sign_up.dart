import 'package:adopt_me/constants/images_assets.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
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
                      margin: EdgeInsets.only(bottom: 5, top: 30),
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
                      margin: EdgeInsets.only(top: 50),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            fixedSize:
                                WidgetStatePropertyAll(Size.fromWidth(207)),
                            padding: WidgetStatePropertyAll(EdgeInsets.all(15)),
                            backgroundColor: WidgetStatePropertyAll(
                                Color.fromRGBO(255, 62, 154, 100)),
                            // backgroundColor: Color.fromRGBO(255, 62, 154, 100)
                          ),
                          child: const Text(
                            "Create an account",
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                          Text(" Login", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 62, 154, 100), fontSize: 14))
                        ],
                      ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
