import 'package:flutter/material.dart';

import '../models/globals.dart';
import '../pages/info.dart';
import '../pages/my_bag.dart';

class M_Shirt extends StatefulWidget {
  const M_Shirt({Key? key}) : super(key: key);

  @override
  State<M_Shirt> createState() => _M_ShirtState();
}

class _M_ShirtState extends State<M_Shirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "MENS SHIRTS",
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
                      img: "assets/pictures/men/shirts/1/1.png",
                      img2: "assets/pictures/men/shirts/1/2.png",
                      img3: "assets/pictures/men/shirts/1/3.png",
                      price: 2500,
                      company: "Zara",
                      dec: "Shirt",
                      rate: 8.9),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/men/shirts/2/1.png",
                      img2: "assets/pictures/men/shirts/2/2.png",
                      img3: "assets/pictures/men/shirts/2/3.png",
                      price: 2199,
                      company: "Puma",
                      dec: "Shirt",
                      rate: 8.2),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                      img: "assets/pictures/men/shirts/3/1.png",
                      img2: "assets/pictures/men/shirts/3/2.png",
                      img3: "assets/pictures/men/shirts/3/3.png",
                      price: 3199,
                      company: "Allen Solly",
                      dec: "Shirt",
                      rate: 9.9),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/men/shirts/4/1.png",
                      img2: "assets/pictures/men/shirts/4/2.png",
                      img3: "assets/pictures/men/shirts/4/3.png",
                      price: 1999,
                      company: "US-Polo",
                      dec: "Shirt",
                      rate: 7.2),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                      img: "assets/pictures/men/shirts/5/1.png",
                      img2: "assets/pictures/men/shirts/5/2.png",
                      img3: "assets/pictures/men/shirts/5/3.png",
                      price: 1699,
                      company: "Diverse",
                      dec: "Shirt",
                      rate: 7.3),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/men/shirts/6/1.png",
                      img2: "assets/pictures/men/shirts/6/2.png",
                      img3: "assets/pictures/men/shirts/6/3.png",
                      price: 2199,
                      company: "Dennis",
                      dec: "Shirt",
                      rate: 8.4),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                      img: "assets/pictures/men/shirts/7/1.png",
                      img2: "assets/pictures/men/shirts/7/2.png",
                      img3: "assets/pictures/men/shirts/7/1.png",
                      price: 1799,
                      company: "Bluecorp",
                      dec: "Shirt",
                      rate: 7.0),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/men/shirts/8/1.png",
                      img2: "assets/pictures/men/shirts/8/2.png",
                      img3: "assets/pictures/men/shirts/8/1.png",
                      price: 1799,
                      company: "Bluecorop",
                      dec: "Shirt",
                      rate: 7.1),
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
