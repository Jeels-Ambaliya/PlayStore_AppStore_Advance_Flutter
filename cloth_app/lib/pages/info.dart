import 'package:cloth_app/pages/detail.dart';
import 'package:flutter/material.dart';

import '../models/globals.dart';
import 'my_bag.dart';

class Info extends StatefulWidget {
  String? pic1;
  String? pic2;
  String? pic3;
  int? price;
  String? dec;
  String? company;
  double? rate;

  Info(
      {required String Pic1,
      required String Pic2,
      required String Pic3,
      required String Dec,
      required String Company,
      required int Price,
      required double Rate}) {
    pic1 = Pic1;
    pic2 = Pic2;
    pic3 = Pic3;
    dec = Dec;
    price = Price;
    rate = Rate;
    company = Company;
  }

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isTapped = !isTapped;
                });
              },
              child: Icon(
                (isTapped) ? Icons.favorite : Icons.favorite_border,
                color: (isTapped) ? Colors.pink : Colors.white,
                size: 30,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 15,
            ),
            child: Icon(
              Icons.share,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 500,
                width: 400,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    width: 1,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 480,
                        width: 380,
                        child: Image.asset("${widget.pic1}"),
                      ),
                      SizedBox(
                        height: 480,
                        width: 400,
                        child: Image.asset("${widget.pic2}"),
                      ),
                      SizedBox(
                        height: 480,
                        width: 400,
                        child: Image.asset("${widget.pic3}"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " ${widget.company}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.price} ₹",
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " ${widget.rate} ⭐",
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "MATERIALS",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 30,
                      ),
                      child: Text(
                        "Nylon was first produced in 1935. Nylon is a thermoplastic silky material. It became famous when used in women's stockings nylons in 1940. It was intended to be a synthetic replacement for silk and substituted for it in many different products after silk became scarce during World War II.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Text(
                      "WASH INSTRUCTION",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 30,
                      ),
                      child: Text(
                        "Instead of buying new socks every time you run out of clean ones, you may want to learn how to wash your clothes. Knowing how to wash your clothes is an important life skill--particularly because otherwise your clothes might start to smell, or you could run up a real tab buying new socks each week. Follow these steps and you'll be washing (and drying) wiz in no time.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Map<String, dynamic> data = {
            'pic1': widget.pic1,
            'price': widget.price,
            'company': widget.company,
            'dec': widget.dec,
          };

          Globals.product.add(data);
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const My_Cart()),
          );
        },
        child: Container(
          height: 60,
          width: 155,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            "ADD TO BAG",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
