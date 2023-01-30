import 'package:flutter/material.dart';
import '../pages/info.dart';
import '../models/globals.dart';
import '../pages/my_bag.dart';

class W_OnePiece extends StatefulWidget {
  const W_OnePiece({Key? key}) : super(key: key);

  @override
  State<W_OnePiece> createState() => _W_OnePieceState();
}

class _W_OnePieceState extends State<W_OnePiece> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "WOMEN ONEPIECE",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Con(
                      img: "assets/pictures/women/onepiece/1/2.png",
                      img2: "assets/pictures/women/onepiece/1/1.png",
                      img3: "assets/pictures/women/onepiece/1/3.png",
                      price: 1999,
                      company: "Greciilooks",
                      dec: "One Piece",
                      rate: 8.2),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/women/onepiece/2/1.png",
                      img2: "assets/pictures/women/onepiece/2/2.png",
                      img3: "assets/pictures/women/onepiece/2/3.png",
                      price: 3989,
                      company: "Lymio",
                      dec: "One Piece",
                      rate: 9.5),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                      img: "assets/pictures/women/onepiece/3/1.png",
                      img2: "assets/pictures/women/onepiece/3/2.png",
                      img3: "assets/pictures/women/onepiece/3/3.png",
                      price: 3599,
                      company: "Generic",
                      dec: "One Piece",
                      rate: 8.9),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/women/onepiece/4/1.png",
                      img2: "assets/pictures/women/onepiece/4/1.png",
                      img3: "assets/pictures/women/onepiece/4/3.png",
                      price: 1499,
                      company: "Textile Fab",
                      dec: "One Piece",
                      rate: 7.5),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                      img: "assets/pictures/women/onepiece/5/2.png",
                      img2: "assets/pictures/women/onepiece/5/1.png",
                      img3: "assets/pictures/women/onepiece/5/3.png",
                      price: 1699,
                      company: "PURVAJA",
                      dec: "One Piece",
                      rate: 7.9),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/women/onepiece/7/1.png",
                      img2: "assets/pictures/women/onepiece/7/2.png",
                      img3: "assets/pictures/women/onepiece/7/3.png",
                      price: 2199,
                      company: "Aahwan",
                      dec: "One Piece",
                      rate: 9.2),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                      img: "assets/pictures/women/onepiece/6/1.png",
                      img2: "assets/pictures/women/onepiece/6/2.png",
                      img3: "assets/pictures/women/onepiece/6/3.png",
                      price: 2699,
                      company: "LEXREX",
                      dec: "One Piece",
                      rate: 9.0),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/women/onepiece/8/1.png",
                      img2: "assets/pictures/women/onepiece/8/2.png",
                      img3: "assets/pictures/women/onepiece/8/3.png",
                      price: 1899,
                      company: "Miss Chase",
                      dec: "One Piece",
                      rate: 8.8),
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

  Widget Con(
      {required String img,
      required String img2,
      required String img3,
      required int price,
      required String dec,
      required double rate,
      required String company}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
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
            height: 220,
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.black.withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Image.asset(img),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Text(
            "$price ₹",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          child: Text(
            company,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
