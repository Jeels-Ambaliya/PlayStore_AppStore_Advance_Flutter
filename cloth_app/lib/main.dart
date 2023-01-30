import 'package:cloth_app/pages/categories.dart';
import 'package:cloth_app/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cloth(),
    ),
  );
}

class Cloth extends StatefulWidget {
  const Cloth({Key? key}) : super(key: key);

  @override
  State<Cloth> createState() => _ClothState();
}

class _ClothState extends State<Cloth> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 25,
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text(
            "JEEL'S",
            style: TextStyle(
              fontSize: 25,
              letterSpacing: 2,
            ),
          ),
          actions: const [
            Icon(
              Icons.favorite_border_rounded,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Tab(
                  child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            //First
            Home_Page(),
            Categories_Page(),
          ],
        ),
      ),
    );
  }
}
