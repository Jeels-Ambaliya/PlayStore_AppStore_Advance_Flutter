// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMI_Cal(),
    ),
  );
}

class BMI_Cal extends StatefulWidget {
  const BMI_Cal({Key? key}) : super(key: key);

  @override
  State<BMI_Cal> createState() => _BMI_CalState();
}

class _BMI_CalState extends State<BMI_Cal> {
  double cal = 0;
  Color fcolor = Colors.white;
  Color mcolor = Colors.white;
  double height_cm = 60;
  double weight = 60;
  double age = 28;
  String show = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff090E21),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        color: const Color(0xff090e21),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                color: const Color(0xff090e21),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                fcolor = const Color(0xffeb1555);
                                mcolor = Colors.white;
                              });
                            },
                            child: Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                color: const Color(0xff1D1E33),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 120,
                                    color: fcolor,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                      color: fcolor,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                mcolor = const Color(0xffeb1555);
                                fcolor = Colors.white;
                              });
                            },
                            child: Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                color: const Color(0xff1D1E33),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 120,
                                    color: mcolor,
                                  ),
                                  Text(
                                    "male",
                                    style: TextStyle(
                                      color: mcolor,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 160,
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: const Color(0xff1D1E33),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "HEIGHT",
                                style: TextStyle(
                                  color: Color(0xff626473),
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "${height_cm.toInt()}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 55,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: "cm",
                                      style: TextStyle(
                                        color: Color(0xff626473),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Slider(
                                  min: 60,
                                  max: 200,
                                  value: height_cm,
                                  activeColor: const Color(0xffF5C1D1),
                                  inactiveColor: const Color(0xff555555),
                                  thumbColor: const Color(0xffEB1555),
                                  label: "${height_cm.toInt()}",
                                  onChanged: (val) {
                                    setState(() {
                                      height_cm = val;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              color: const Color(0xff1D1E33),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Weight",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "${weight.toStringAsFixed(0)}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: const Color(0xff4c4f5e),
                                        ),
                                        child: const Icon(
                                          Icons.remove,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: const Color(0xff4c4f5e),
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          color: Color(0xffEb1555),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              color: const Color(0xff1D1E33),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Age",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "${age.toStringAsFixed(0)}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: const Color(0xff4c4f5e),
                                        ),
                                        child: const Icon(
                                          Icons.remove,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: const Color(0xff4c4f5e),
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          color: Color(0xffEb1555),
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
                      Text(
                        "${show},",
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    cal = weight / ((height_cm / 100) * (height_cm / 100));

                    if (cal < 18.5) {
                      show = "UnderWeight";
                    } else if (cal > 18.5 && cal < 24.29) {
                      show = "Normal Weight";
                    } else if (cal > 25 && cal < 29.29) {
                      show = "Pre Obesity";
                    } else if (cal > 30 && cal < 34.9) {
                      show = "Obesity Class I";
                    } else if (cal > 35 && cal < 39.9) {
                      show = "Obesity Class II";
                    } else {
                      show = "Obesity Class III";
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffEB1555),
                    borderRadius: BorderRadius.circular(42),
                  ),
                  child: const Text(
                    "Calculate",
                    style: TextStyle(fontSize: 40, color: Colors.white),
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
