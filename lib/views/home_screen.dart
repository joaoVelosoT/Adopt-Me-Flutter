import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      
        leading: Icon(Icons.account_circle_outlined, size: 50,),
        title: const Column(
          children: [
            Row(
              children: [
                Text("Hello João", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on, color: Color.fromRGBO(72, 72, 72, 0.612),),
                Text("São Paulo, Brasil", style: TextStyle(fontSize: 16 , color: Color.fromRGBO(72, 72, 72, 0.612)),),
              ],
            ),
          ],
        ),
        
        actions: [
          Container(
            width: 33,
            height: 33,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(5)),
            child: const Icon(Icons.person_2_outlined, color: Colors.white,))
        ],

        bottom: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          height: 100,
          decoration: const BoxDecoration(
            
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                width: 300,
                height: 30,
                decoration: BoxDecoration(
                      
                        border: Border.all(width: 0.5, color: Colors.pink),
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                child: TextField(
                  
                  decoration: InputDecoration(
                    
                    suffixIcon: Container(
                      decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.search),
                      ),
                    border: InputBorder.none,
               
                  labelText: "Search",

                ),
                ),
              ),
              

            ],
          ),
        ),
      ),


      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text("data")
          ],
        ),
      ),
    );
  }
}