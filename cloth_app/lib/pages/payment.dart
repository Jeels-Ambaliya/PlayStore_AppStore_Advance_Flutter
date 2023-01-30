import 'package:cloth_app/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../models/globals.dart';

class Payment extends StatefulWidget {
  String? pic1;
  int? price;
  String? company;
  String? name;
  int? p_no;
  String? address;
  String? dec;

  Payment({
    required String Pic1,
    required String Company,
    required int Price,
    required String Name,
    required int P_No,
    required String Address,
    required String Dec,
  }) {
    pic1 = Pic1;
    price = Price;
    company = Company;
    name = Name;
    p_no = P_No;
    address = Address;
    dec = Dec;
  }
  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  Random rr = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "PAYMENT",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 12,
              ),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(0.2),
                      border: Border.all(
                        width: 1,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    child: Image.asset("${widget.pic1}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price        : ${widget.price} ₹",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Type         : ${widget.dec}",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Company : ${widget.company}",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(0.2),
                border: Border.all(
                  width: 1,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Item Id : ${rr.nextInt(10000)}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Order Id : ${rr.nextInt(1000000000)}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Name : ${widget.name} ",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Phone Number : ${widget.p_no} ",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Address : ${widget.address}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Payment Id : ${widget.p_no}@paytm ",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(60),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Cloth()),
                  );
                  setState(
                    () {},
                  );
                },
                child: Container(
                  height: 80,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 4,
                        blurRadius: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: Text(
                    "Pay ${widget.price} ₹",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
