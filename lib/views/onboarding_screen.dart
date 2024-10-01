import 'package:adopt_me/constants/images_assets.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        
        child: Column(
          
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AppImages.onboarding),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 300,
              child: Column(
              children: [
                const Text(
                  "Welcome To Parws `n Tales",
                  textAlign: TextAlign.center,

                   style: TextStyle(
                    
                    fontWeight: FontWeight.bold,
                    fontSize: 42,
                    
                ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 150),
                  child: const Text(
                    "Find and adopt your favorite pet from pet shops or shelters, easier than ever",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(154, 154, 154, 100)
                    ),
                    ),
                ),
              ],
            )),
            
            ElevatedButton(
              
              onPressed: () {},
              style: const ButtonStyle(
                fixedSize: WidgetStatePropertyAll(Size.fromWidth(207)),
                padding: WidgetStatePropertyAll(EdgeInsets.all(15)),
                backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(255, 62, 154, 100)),
                // backgroundColor: Color.fromRGBO(255, 62, 154, 100)
              ),
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
                ))
          ],
        ),
      ),
    );
  }
}