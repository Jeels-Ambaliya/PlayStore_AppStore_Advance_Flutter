import 'dart:io';
import 'package:flutter/material.dart';
import 'package:invoice_generator/pages/cartPage.dart';
import 'package:invoice_generator/pages/info.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Invoice_Generator(),
        'cart': (context) => const CartPage(),
      },
    ),
  );
}

class Invoice_Generator extends StatefulWidget {
  const Invoice_Generator({Key? key}) : super(key: key);

  @override
  State<Invoice_Generator> createState() => _Invoice_GeneratorState();
}

class _Invoice_GeneratorState extends State<Invoice_Generator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shopping",
          style: TextStyle(
            fontSize: 24,
            letterSpacing: 8,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Con(
                    img: "assets/pictures/onepiece/6/1.png",
                    img2: "assets/pictures/onepiece/6/2.png",
                    img3: "assets/pictures/onepiece/6/3.png",
                    price: 2699,
                    companyName: "LEXREX",
                    rate: 9.0,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                    img: "assets/pictures/onepiece/8/1.png",
                    img2: "assets/pictures/onepiece/8/2.png",
                    img3: "assets/pictures/onepiece/8/3.png",
                    price: 1899,
                    companyName: "Miss Chase",
                    rate: 8.8,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                    img: "assets/pictures/onepiece/2/1.png",
                    img2: "assets/pictures/onepiece/2/2.png",
                    img3: "assets/pictures/onepiece/2/3.png",
                    price: 5500,
                    companyName: "Greciilooks",
                    rate: 9.8,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                    img: "assets/pictures/onepiece/7/1.png",
                    img2: "assets/pictures/onepiece/7/2.png",
                    img3: "assets/pictures/onepiece/7/3.png",
                    price: 1999,
                    companyName: "Lymio",
                    rate: 8.9,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                    img: "assets/pictures/onepiece/3/1.png",
                    img2: "assets/pictures/onepiece/3/2.png",
                    img3: "assets/pictures/onepiece/3/3.png",
                    price: 2399,
                    companyName: "Textile Fab",
                    rate: 9.8,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                    img: "assets/pictures/onepiece/1/1.png",
                    img2: "assets/pictures/onepiece/1/2.png",
                    img3: "assets/pictures/onepiece/1/3.png",
                    price: 1999,
                    companyName: "Aahwan",
                    rate: 8.5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'cart');
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.shopping_bag),
      ),
    );
  }

  Widget Con({
    required String img,
    required String img2,
    required String img3,
    required double price,
    required double rate,
    required String companyName,
  }) {
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
                  Price: price,
                  Rate: rate,
                  Company: companyName,
                ),
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
            companyName,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
