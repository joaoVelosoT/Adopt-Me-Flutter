import 'package:adopt_me/constants/images_assets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        
        leading: 
        
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AppImages.personIcon, width: 70, height: 60),
        ),
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
            width: 50,
                height: 44,
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
                height: 44,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                        
                        border: Border.all(width: 0.5, color: Colors.pink),
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                child: TextField(
                
                  decoration: InputDecoration(
                      
                    suffixIcon: Container(
                      width: 50,
                      decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.search, color: Colors.white,),
                      ),
                    border: InputBorder.none,
               
                  hintText: "Search",
                  hintStyle: TextStyle()

                ),
                ),
              ),
              Container(
                width: 50,
                height: 44,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.manage_search_rounded, color: Colors.white,))

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