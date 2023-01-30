import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GST_Cal(),
    ),
  );
}

class GST_Cal extends StatefulWidget {
  const GST_Cal({Key? key}) : super(key: key);

  @override
  State<GST_Cal> createState() => _GST_CalState();
}

class _GST_CalState extends State<GST_Cal> {
  Color MySmallButtonColor1 = const Color(0xffe9e9e9);
  Color MySmallTextColor1 = Colors.black;
  Color MySmallButtonColor2 = const Color(0xffe9e9e9);
  Color MySmallTextColor2 = Colors.black;
  Color MySmallButtonColor3 = const Color(0xffe9e9e9);
  Color MySmallTextColor3 = Colors.black;
  Color MySmallButtonColor4 = const Color(0xffe9e9e9);
  Color MySmallTextColor4 = Colors.black;
  Color MySmallButtonColor5 = const Color(0xffe9e9e9);
  Color MySmallTextColor5 = Colors.black;

  String OPrice = '';
  String operator = "";
  double FPrice = 00;
  double Result = 0;
  double Gst = 00;
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      color: const Color(0xffe9e9e9),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "ORIGINAL PRICE",
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          Text(
                            "${OPrice} Rs.",
                            style: const TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      color: const Color(0xffe9e9e9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "GST",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  operator = "*";
                                  List myList = OPrice.split(operator);
                                  double number1 = double.parse(myList[0]);
                                  switch (operator) {
                                    case "*":
                                      {
                                        Result = (number1 * 3) / 100 + number1;
                                        Gst = ((number1 * 3) / 100) / 2;
                                      }
                                  }
                                  setState(() {
                                    MySmallButtonColor1 = Colors.deepOrange;
                                    MySmallTextColor1 = Colors.white;

                                    MySmallButtonColor2 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor2 = Colors.black;
                                    MySmallButtonColor3 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor3 = Colors.black;
                                    MySmallButtonColor4 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor4 = Colors.black;
                                    MySmallButtonColor5 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor5 = Colors.black;
                                    FPrice = Result;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 80,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: MySmallButtonColor1,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "3%",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: MySmallTextColor1,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  operator = "*";
                                  List myList = OPrice.split(operator);
                                  double number1 = double.parse(myList[0]);
                                  switch (operator) {
                                    case "*":
                                      {
                                        Result = (number1 * 5) / 100 + number1;
                                        Gst = ((number1 * 5) / 100) / 2;
                                      }
                                  }
                                  setState(() {
                                    MySmallButtonColor2 = Colors.deepOrange;
                                    MySmallTextColor2 = Colors.white;

                                    MySmallButtonColor1 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor1 = Colors.black;
                                    MySmallButtonColor3 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor3 = Colors.black;
                                    MySmallButtonColor4 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor4 = Colors.black;
                                    MySmallButtonColor5 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor5 = Colors.black;
                                    FPrice = Result;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 80,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: MySmallButtonColor2,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "5%",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: MySmallTextColor2,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  operator = "*";
                                  List myList = OPrice.split(operator);
                                  double number1 = double.parse(myList[0]);
                                  switch (operator) {
                                    case "*":
                                      {
                                        Result = (number1 * 12) / 100 + number1;
                                        Gst = ((number1 * 12) / 100) / 2;
                                      }
                                  }
                                  setState(() {
                                    MySmallButtonColor3 = Colors.deepOrange;
                                    MySmallTextColor3 = Colors.white;

                                    MySmallButtonColor1 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor1 = Colors.black;
                                    MySmallButtonColor2 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor2 = Colors.black;
                                    MySmallButtonColor4 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor4 = Colors.black;
                                    MySmallButtonColor5 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor5 = Colors.black;
                                    FPrice = Result;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 80,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: MySmallButtonColor3,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "12%",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: MySmallTextColor3,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  operator = "*";
                                  List myList = OPrice.split(operator);
                                  double number1 = double.parse(myList[0]);
                                  switch (operator) {
                                    case "*":
                                      {
                                        Result = (number1 * 18) / 100 + number1;
                                        Gst = ((number1 * 18) / 100) / 2;
                                      }
                                  }
                                  setState(() {
                                    MySmallButtonColor4 = Colors.deepOrange;
                                    MySmallTextColor4 = Colors.white;

                                    MySmallButtonColor1 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor1 = Colors.black;
                                    MySmallButtonColor2 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor2 = Colors.black;
                                    MySmallButtonColor3 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor3 = Colors.black;
                                    MySmallButtonColor5 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor5 = Colors.black;
                                    FPrice = Result;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 80,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: MySmallButtonColor4,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "18%",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: MySmallTextColor4,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  operator = "*";
                                  List myList = OPrice.split(operator);
                                  double number1 = double.parse(myList[0]);
                                  switch (operator) {
                                    case "*":
                                      {
                                        Result = (number1 * 28) / 100 + number1;
                                        Gst = ((number1 * 28) / 100) / 2;
                                      }
                                  }
                                  setState(() {
                                    MySmallButtonColor5 = Colors.deepOrange;
                                    MySmallTextColor5 = Colors.white;

                                    MySmallButtonColor1 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor1 = Colors.black;
                                    MySmallButtonColor2 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor2 = Colors.black;
                                    MySmallButtonColor3 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor3 = Colors.black;
                                    MySmallButtonColor4 =
                                        const Color(0xffe9e9e9);
                                    MySmallTextColor4 = Colors.black;
                                    FPrice = Result;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 80,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: MySmallButtonColor5,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "28%",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: MySmallTextColor5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      color: const Color(0xffe9e9e9),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "FINAL PRICE",
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          const SizedBox(
                            width: 150,
                          ),
                          Text(
                            "${FPrice} RS.",
                            style: const TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: double.infinity,
                      color: const Color(0xffe9e9e9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "CGST/SGST",
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "$Gst",
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          MyButton(num: "7"),
                          MyButton(num: "8"),
                          MyButton(num: "9"),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(num: "4"),
                          MyButton(num: "5"),
                          MyButton(num: "6"),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(num: "1"),
                          MyButton(num: "2"),
                          MyButton(num: "3"),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(num: "00"),
                          MyButton(num: "0"),
                          MyButton(num: "."),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            OPrice = '';
                            MySmallButtonColor1 = const Color(0xffe9e9e9);
                            MySmallTextColor1 = Colors.black;
                            MySmallButtonColor2 = const Color(0xffe9e9e9);
                            MySmallTextColor2 = Colors.black;
                            MySmallButtonColor3 = const Color(0xffe9e9e9);
                            MySmallTextColor3 = Colors.black;
                            MySmallButtonColor4 = const Color(0xffe9e9e9);
                            MySmallTextColor4 = Colors.black;
                            MySmallButtonColor5 = const Color(0xffe9e9e9);
                            MySmallTextColor5 = Colors.black;
                            FPrice = 00;
                            Gst = 0;
                          });
                        },
                        child: Container(
                          height: 180,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Text(
                            "AC",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            OPrice = OPrice.substring(
                              0,
                              OPrice.length - 1,
                            );
                          });
                        },
                        child: Container(
                          height: 180,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.backspace_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget MyButton({required String num}) {
    return InkWell(
      onTap: () {
        setState(() {
          OPrice += "$num";
        });
      },
      child: Container(
        height: 90,
        width: 90,
        alignment: Alignment.center,
        child: Text(
          "${num}",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
