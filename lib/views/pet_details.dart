import 'package:flutter/material.dart';

class PetDetails extends StatelessWidget {
  const PetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.favorite)
        ],
      ),
      body: SingleChildScrollView(
        
      ),
    );
  }
}