import 'package:adopt_me/views/add_pet.dart';
import 'package:adopt_me/views/cats_screen.dart';
import 'package:adopt_me/views/dogs_screen.dart';
import 'package:adopt_me/views/edit_profile.dart';
import 'package:adopt_me/views/favorites_screen.dart';
import 'package:adopt_me/views/home_screen.dart';
import 'package:adopt_me/views/log_in.dart';
import 'package:adopt_me/views/onboarding_screen.dart';
import 'package:adopt_me/views/pet_details.dart';
import 'package:adopt_me/views/profile_screen.dart';
import 'package:adopt_me/views/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardingScreen(),
      
    );
  }
}
