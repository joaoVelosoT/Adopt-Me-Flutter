import 'package:adopt_me/widgets/bottom_navigator_widget.dart';
import 'package:flutter/material.dart';

class AddPet extends StatelessWidget {
  const AddPet({super.key});


// Desculpe, essa pagina fiz com preguiça
// As outras fiz com esforço e determinação

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        title: const Text("Adicionar pet"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Age',
                      ),
                    ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Location',
                      ),
                    ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Sex',
                      ),
                    ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Breed',
                      ),
                    ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Color',
                      ),
                    ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Weight',
                      ),
                    ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Criar pet"))
          ],
          
        ),
        
      ),
      bottomNavigationBar: BottomNavigatorWidget(), 
    );
  }
}