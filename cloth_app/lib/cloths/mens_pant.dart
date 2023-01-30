import 'package:flutter/material.dart';

import '../models/globals.dart';
import '../pages/info.dart';
import '../pages/my_bag.dart';

class M_Pants extends StatefulWidget {
  const M_Pants({Key? key}) : super(key: key);

  @override
  State<M_Pants> createState() => _M_PantsState();
}

class _M_PantsState extends State<M_Pants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "MENS PANTS",
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
                    img: "assets/pictures/men/pants/1/11.png",
                    img2: "assets/pictures/men/pants/1/12.png",
                    img3: "assets/pictures/men/pants/1/13.png",
                    price: 2500,
                    company: "Zara",
                    dec: "Pant",
                    rate: 9.1,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                    img: "assets/pictures/men/pants/2/21.png",
                    img2: "assets/pictures/men/pants/2/22.png",
                    img3: "assets/pictures/men/pants/2/23.png",
                    price: 2199,
                    company: "Ragzo",
                    dec: "Pant",
                    rate: 9.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                    img: "assets/pictures/men/pants/3/31.png",
                    img2: "assets/pictures/men/pants/3/32.png",
                    img3: "assets/pictures/men/pants/3/33.png",
                    price: 1599,
                    company: "NE",
                    dec: "Pant",
                    rate: 8.5,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                    img: "assets/pictures/men/pants/4/41.png",
                    img2: "assets/pictures/men/pants/4/42.png",
                    img3: "assets/pictures/men/pants/4/43.png",
                    price: 1999,
                    company: "Wrangler",
                    dec: "Pant",
                    rate: 9.1,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                    img: "assets/pictures/men/pants/5/51.png",
                    img2: "assets/pictures/men/pants/5/52.png",
                    img3: "assets/pictures/men/pants/5/53.png",
                    price: 2499,
                    company: "Levi's",
                    dec: "Pant",
                    rate: 9.4,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                    img: "assets/pictures/men/pants/6/61.png",
                    img2: "assets/pictures/men/pants/6/62.png",
                    img3: "assets/pictures/men/pants/6/63.png",
                    price: 2099,
                    company: "Polo",
                    dec: "Pant",
                    rate: 8.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                    img: "assets/pictures/men/pants/7/71.png",
                    img2: "assets/pictures/men/pants/7/72.png",
                    img3: "assets/pictures/men/pants/7/73.png",
                    price: 2399,
                    company: "Ragzo",
                    dec: "Pant",
                    rate: 9.3,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                    img: "assets/pictures/men/pants/8/81.png",
                    img2: "assets/pictures/men/pants/8/82.png",
                    img3: "assets/pictures/men/pants/8/83.png",
                    price: 2899,
                    company: "Spykar",
                    dec: "Pant",
                    rate: 9.8,
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
