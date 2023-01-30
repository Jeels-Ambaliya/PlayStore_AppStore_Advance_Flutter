import 'package:cloth_app/pages/info.dart';
import 'package:cloth_app/pages/my_bag.dart';
import 'package:flutter/material.dart';

import '../models/globals.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              bigCon(
                img: "assets/pictures/men/shirts/3/1.png",
                img2: "assets/pictures/men/shirts/3/2.png",
                img3: "assets/pictures/men/shirts/3/3.png",
                price: 2500,
                dec: "Shirt",
                rate: 8.9,
                company: "Zara",
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  smallCon(
                    img: "assets/pictures/women/kurti/6/61.png",
                    img2: "assets/pictures/women/kurti/6/62.png",
                    img3: "assets/pictures/women/kurti/6/63.png",
                    price: 1799,
                    company: "Rajnandini",
                    dec: "Kurti",
                    rate: 9.2,
                  ),
                  smallCon(
                    img: "assets/pictures/women/onepiece/7/1.png",
                    img2: "assets/pictures/women/onepiece/7/2.png",
                    img3: "assets/pictures/women/onepiece/7/3.png",
                    price: 2199,
                    company: "Aahwan",
                    dec: "OnePiece",
                    rate: 9.2,
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              bigCon(
                  img: "assets/pictures/women/onepiece/2/1.png",
                  img2: "assets/pictures/women/onepiece/2/2.png",
                  img3: "assets/pictures/women/onepiece/2/3.png",
                  price: 3989,
                  company: "Lymio",
                  dec: "OnePiece",
                  rate: 9.5),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  smallCon(
                      img: "assets/pictures/men/shirts/7/1.png",
                      img2: "assets/pictures/men/shirts/7/2.png",
                      img3: "assets/pictures/men/shirts/7/1.png",
                      price: 1799,
                      company: "Bluecorp",
                      dec: "Shirt",
                      rate: 7.0),
                  smallCon(
                    img: "assets/pictures/men/pants/1/11.png",
                    img2: "assets/pictures/men/pants/1/12.png",
                    img3: "assets/pictures/men/pants/1/13.png",
                    price: 2500,
                    company: "Zara",
                    dec: "Pants",
                    rate: 9.1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const My_Cart()),
          );
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }

  Widget bigCon({
    required String img,
    required String img2,
    required String img3,
    required int price,
    required String dec,
    required double rate,
    required String company,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Info(
                Pic1: img,
                Pic2: img2,
                Pic3: img3,
                Dec: dec,
                Price: price,
                Rate: rate,
                Company: company),
          ),
        );
      },
      child: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          border: Border.all(
            width: 1,
            color: Colors.black.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Image.asset(img),
      ),
    );
  }

  Widget smallCon({
    required String img,
    required String img2,
    required String img3,
    required int price,
    required String dec,
    required double rate,
    required String company,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Info(
                Pic1: img,
                Pic2: img2,
                Pic3: img3,
                Dec: dec,
                Price: price,
                Rate: rate,
                Company: company),
          ),
        );
      },
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: 1,
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        child: Image.asset(img),
      ),
    );
  }
}
