import 'package:cloth_app/cloths/mens_pant.dart';
import 'package:cloth_app/cloths/mens_shirt.dart';
import 'package:cloth_app/cloths/women_kurti.dart';
import 'package:cloth_app/cloths/women_onepiece.dart';
import 'package:flutter/material.dart';

class Categories_Page extends StatefulWidget {
  const Categories_Page({Key? key}) : super(key: key);

  @override
  State<Categories_Page> createState() => _Categories_PageState();
}

class _Categories_PageState extends State<Categories_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const M_Shirt()),
                );
              });
            },
            child: myCat(
                Name: "MENS SHIRTS", img: "assets/pictures/men/shirts/1/1.png"),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const M_Pants()),
                );
              });
            },
            child: myCat(
                Name: "MENS PANTS", img: "assets/pictures/men/pants/1/11.png"),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const W_OnePiece()),
                );
              });
            },
            child: myCat(
                Name: "WOMEN ONEPIECE",
                img: "assets/pictures/women/onepiece/2/1.png"),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const W_Kurti()),
                );
              });
            },
            child: myCat(
                Name: "WOMEN KURTI",
                img: "assets/pictures/women/kurti/8/81.png"),
          ),
        ],
      ),
    );
  }

  Widget myCat({required String Name, required String img}) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.black.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.withOpacity(0.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              Name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 150,
              width: 100,
              child: Image.asset(img),
            ),
          ],
        ),
      ),
    );
  }
}
