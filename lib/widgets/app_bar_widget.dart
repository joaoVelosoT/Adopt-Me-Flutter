import 'package:adopt_me/constants/images_assets.dart';
import 'package:adopt_me/views/profile_screen.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  AppBarWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.pink,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Image.asset(AppImages.personIcon, width: 70, height: 60),
      ),
      title:  Column(
        children: [
          Row(
            children: [
              Text(
                this.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
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
        ElevatedButton(
          style: ButtonStyle(
              elevation: WidgetStatePropertyAll(0),
              backgroundColor: WidgetStatePropertyAll(Colors.white)),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
          child: Container(
              width: 50,
              height: 44,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.person_2_outlined,
                color: Colors.white,
              )),
        )
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
                padding: const EdgeInsets.only(left: 10),
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
                      hintStyle: const TextStyle()),
                ),
              ),
              Container(
                  width: 50,
                  height: 44,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.manage_search_rounded,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  // Implementação necessária para definir o tamanho da AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 100);
}
