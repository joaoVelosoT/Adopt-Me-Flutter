import 'package:adopt_me/constants/images_assets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const dogs = [
      {
        "imagem" : "",
        "idade" : "3",
      },
      {
        "imagem" : "",
        "idade" : "3",
      },
      {
        "imagem" : "",
        "idade" : "3",
      },
      {
        "imagem" : "",
        "idade" : "3",
      },
      {
        "imagem" : "",
        "idade" : "3",
      },
      {
        "imagem" : "",
        "idade" : "3",
      },
    ];



    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.pink,
        backgroundColor: Colors.white,
        // foregroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AppImages.personIcon, width: 70, height: 60),
        ),
        title: const Column(
          children: [
            Row(
              children: [
                Text(
                  "Hello João",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: Color.fromRGBO(72, 72, 72, 0.612),
                ),
                Text(
                  "São Paulo, Brasil",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(72, 72, 72, 0.612)),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
              width: 50,
              height: 44,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.person_2_outlined,
                color: Colors.white,
              ))
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            height: 100,
            decoration: const BoxDecoration(),
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
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle()),
                  ),
                ),
                Container(
                    width: 50,
                    height: 44,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.manage_search_rounded,
                      color: Colors.white,
                    ))
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
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20),
              child: const Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      width: 80,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          // border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      child: const Text("Dogs",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center)),
                  Container(
                      width: 80,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          // border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      child: const Text("Cats",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center)),
                  Container(
                      width: 80,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          // border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      child: const Text("Fish",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center)),
                ],
              ),
            ),

  
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 5, left: 20),
              child: const Row(
                children: [
                  Text(
                    "Popular pets",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

          GridView.builder(
                shrinkWrap: true,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                itemCount: dogs.length, //qtd de produtos
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 125,
                      height: 260,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.3),
                        borderRadius: BorderRadius.circular(10)
                        ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppImages.dog1),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Austin", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                    Row(
                                      children: [
                                        Text("1 Year", style: TextStyle(fontSize: 14, color: Color.fromRGBO(72, 72, 72, 0.612)),),
                                        Icon(Icons.male, color: Colors.blue,)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              
                              
                            ],
                          )
                        ],
                      )),
                  );
                },
              ),
              

          //  BottomNavigationBarExample()
          ],
          
        ),
          
      ),
      
    
    );
  }
 
}


class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
