import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Emi_Cal(),
    ),
  );
}

class Emi_Cal extends StatefulWidget {
  const Emi_Cal({Key? key}) : super(key: key);

  @override
  State<Emi_Cal> createState() => _Emi_CalState();
}

class _Emi_CalState extends State<Emi_Cal> {
  double emi = 0;
  List<double> mySliderData = [0, 1, 3];

  var Formet = [" ", "%", "Months"];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff20295c),
        leading: const Icon(Icons.grid_view_outlined),
        title: const Text("EMI Calculator"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff20295c),
                  Color(0xff0F2027),
                ],
                begin: Alignment.topCenter,
                end: Alignment.center,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Your Loan EMI is",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "₹ ${emi.toStringAsFixed(2)}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const TextSpan(
                      text: "Month",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: size.height * 0.75,
            width: size.width,
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(60),
              ),
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    mySliderBox(
                        text: "Loan Amount",
                        data: mySliderData,
                        index: 0,
                        min: 0,
                        max: 1000000),
                    mySliderBox(
                        text: "Interest Rate",
                        data: mySliderData,
                        index: 1,
                        min: 1,
                        max: 18),
                    mySliderBox(
                        text: "Loan Tenure",
                        data: mySliderData,
                        index: 2,
                        min: 3,
                        max: 36),
                    const SizedBox(
                      height: 70,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          double P = mySliderData[0];
                          double R = mySliderData[1] / 12 / 100;
                          double N = mySliderData[2];

                          emi = P * R * pow((1 + R), N) / ((pow(1 + R, N)) - 1);
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 250,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xffE7EAFF),
                          border: Border.all(
                            width: 0.4,
                            color: const Color(0xff2C397E),
                          ),
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(5),
                            bottom: Radius.circular(5),
                          ),
                        ),
                        child: const Text(
                          "Calculate",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff2C3568),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget mySliderBox(
      {required String text,
      required List data,
      required int index,
      required double min,
      required double max}) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xff484848),
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 50,
                color: Color(0xffE5E6E8),
              ),
            ),
            Text(
              "${data[index].toInt()} ${Formet[index]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Slider(
          value: data[index],
          onChanged: (val) {
            setState(() {
              data[index] = val;
            });
          },
          min: min,
          max: max,
        ),
      ],
    );
  }
}
