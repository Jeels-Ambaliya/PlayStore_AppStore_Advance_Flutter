import 'package:flutter/material.dart';
import '../models/globals.dart';
import '../pages/info.dart';
import '../pages/my_bag.dart';

class W_Kurti extends StatefulWidget {
  const W_Kurti({Key? key}) : super(key: key);

  @override
  State<W_Kurti> createState() => _W_KurtiState();
}

class _W_KurtiState extends State<W_Kurti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "WOMEN KURTI",
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
                      img: "assets/pictures/women/kurti/1/1.png",
                      img2: "assets/pictures/women/kurti/1/2.png",
                      img3: "assets/pictures/women/kurti/1/3.png",
                      price: 1500,
                      company: "Amayra",
                      dec: "Kurti",
                      rate: 8.0),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/women/kurti/2/21.png",
                      img2: "assets/pictures/women/kurti/2/22.png",
                      img3: "assets/pictures/women/kurti/2/23.png",
                      price: 1600,
                      company: "Nainvish",
                      dec: "Kurti",
                      rate: 8.1),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                      img: "assets/pictures/women/kurti/3/31.png",
                      img2: "assets/pictures/women/kurti/3/32.png",
                      img3: "assets/pictures/women/kurti/3/33.png",
                      price: 1200,
                      company: "Amayra",
                      dec: "Kurti",
                      rate: 7.8),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/women/kurti/4/41.png",
                      img2: "assets/pictures/women/kurti/4/42.png",
                      img3: "assets/pictures/women/kurti/4/43.png",
                      price: 1899,
                      company: "Jaipur Kurti",
                      dec: "Kurti",
                      rate: 8.3),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                      img: "assets/pictures/women/kurti/5/51.png",
                      img2: "assets/pictures/women/kurti/5/52.png",
                      img3: "assets/pictures/women/kurti/5/53.png",
                      price: 1400,
                      company: "KrazzyKudy",
                      dec: "Kurti",
                      rate: 8.3),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                    img: "assets/pictures/women/kurti/6/61.png",
                    img2: "assets/pictures/women/kurti/6/62.png",
                    img3: "assets/pictures/women/kurti/6/63.png",
                    price: 1799,
                    company: "Rajnandini",
                    dec: "Kurti",
                    rate: 9.2,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Con(
                      img: "assets/pictures/women/kurti/7/71.png",
                      img2: "assets/pictures/women/kurti/7/72.png",
                      img3: "assets/pictures/women/kurti/7/73.png",
                      price: 2400,
                      company: "BIBA",
                      dec: "Kurti",
                      rate: 9.5),
                  const SizedBox(
                    width: 20,
                  ),
                  Con(
                      img: "assets/pictures/women/kurti/8/81.png",
                      img2: "assets/pictures/women/kurti/8/82.png",
                      img3: "assets/pictures/women/kurti/8/83.png",
                      price: 1599,
                      company: "Generic",
                      dec: "Kurti",
                      rate: 8.3),
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
