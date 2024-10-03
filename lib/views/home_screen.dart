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
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Image.asset(AppImages.dogsHome),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: const Row(
                children: [
                  Text("Categories", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Row(
              
              children: [
                Container(
                  width: 80,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    // border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text("Dogs", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
                  ),
                Container(
                  width: 80,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    // border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text("Cats", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                  ),
                Container(
                  width: 80,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    // border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text("Fish", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                  ),
                  
                  
              ],
              
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: const Row(
                children: [
                  Text("Popular pets", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}