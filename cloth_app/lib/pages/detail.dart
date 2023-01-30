import 'package:cloth_app/pages/payment.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  String? pic1;
  int? price;
  String? company;
  String? dec;

  Detail({
    required String Pic1,
    required String Company,
    required int Price,
    required String Dec,
  }) {
    pic1 = Pic1;
    price = Price;
    company = Company;
    dec = Dec;
  }

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  String? Name;
  String? Address;
  int? P_Number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "DETAILS",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              height: 430,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black.withOpacity(0.3),
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "INFORMATION",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.double,
                      ),
                    ),
                    TextField(
                      onChanged: (val) {
                        Name = val;
                      },
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        label: Text('Name'),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        P_Number = int.parse(val);
                      },
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        label: Text('Phone Number'),
                      ),
                    ),
                    TextField(
                      onChanged: (val) {
                        Address = val;
                      },
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        label: Text('Address'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Payment(
                        Pic1: widget.pic1!,
                        Price: widget.price!,
                        Company: widget.company!,
                        Name: Name!,
                        P_No: P_Number!,
                        Address: Address!,
                        Dec: widget.dec!,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 70,
                  width: 170,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "SUBMIT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
