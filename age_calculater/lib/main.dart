import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Age_Cal(),
    ),
  );
}

class Age_Cal extends StatefulWidget {
  const Age_Cal({Key? key}) : super(key: key);

  @override
  State<Age_Cal> createState() => _Age_CalState();
}

class _Age_CalState extends State<Age_Cal> {
  String? myDisplayValue;

  DateTime currentDate = DateTime.now();

  String PreYear = "00";
  String PreMonth = "00";
  String PreDay = "00";

  String nMonth = "00";
  String nDay = "00";

  String birthDay = "";
  String birthMonth = "";
  String birthYear = "";

  TextEditingController dayCtrl = TextEditingController();
  TextEditingController monthCtrl = TextEditingController();
  TextEditingController yearCtrl = TextEditingController();

  List mm = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  List Month = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sept",
    "Oct",
    "Nov",
    "Dec",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff203A43),
        centerTitle: true,
        title: const Text(
          "Age Calculator",
          style: TextStyle(
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Today's Date
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Today's Date"),
                    const SizedBox(
                      height: 2,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                        enabled: false,
                        hintText:
                            "  ${currentDate.day} ${Month[currentDate.month - 1]}, ${currentDate.year}",
                        border: OutlineInputBorder(),
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1C003E),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Date Of Birth
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Date Of Birth"),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            enabled: (birthDay.length >= 2) ? false : true,
                            controller: dayCtrl,
                            onChanged: (val) {
                              setState(() {
                                birthDay = val;
                                print(birthDay);
                              });
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: "DD",
                              hintStyle: TextStyle(
                                color: Color(0xffE5E5E5),
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            enabled: (birthMonth.length >= 2) ? false : true,
                            controller: monthCtrl,
                            onChanged: (val) {
                              setState(() {
                                birthMonth = val;
                                print(birthMonth);
                              });
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: "MM",
                              hintStyle: TextStyle(
                                color: Color(0xffE5E5E5),
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            enabled: (birthYear.length >= 4) ? false : true,
                            controller: yearCtrl,
                            onChanged: (val) {
                              setState(() {
                                birthYear = val;
                                print(birthYear);
                              });
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: "YYYY",
                              hintStyle: TextStyle(
                                color: Color(0xffE5E5E5),
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Calculate
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Ink(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              birthDay = "";
                              birthMonth = "";
                              birthYear = "";

                              print(birthDay);
                              print(birthMonth);
                              print(birthYear);

                              dayCtrl.clear();
                              monthCtrl.clear();
                              yearCtrl.clear();

                              PreYear = "00";
                              PreMonth = "00";
                              PreDay = "00";
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                              right: 5,
                              bottom: 17,
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff13547A),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "Clear",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Ink(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              //Present Age

                              //Year
                              PreYear =
                                  (currentDate.year - int.parse(birthYear!))
                                      .toString();

                              //Month
                              if (currentDate.month < int.parse(birthMonth!)) {
                                PreYear = (int.parse(PreYear) - 1).toString();
                                PreMonth = (12 -
                                        (int.parse(birthMonth!) -
                                            currentDate.month))
                                    .toString();
                              } else {
                                PreMonth =
                                    (currentDate.month - int.parse(birthMonth!))
                                        .toString();
                              }

                              //Day
                              // if (currentDate.day < int.parse(birthDay!)) {
                              //   PreMonth = (int.parse(PreMonth) - 1).toString();
                              //   PreDay = (int.parse(birthDay!) -
                              //           (mm[currentDate.month - 1]))
                              //       .toString();
                              // } else {
                              //   PreDay = ((mm[currentDate.month - 1] -
                              //               int.parse(birthDay!)) -
                              //           1)
                              //       .toString();
                              // }

                              if (currentDate.day > int.parse(birthDay!)) {
                                PreMonth = (int.parse(PreMonth) - 1).toString();
                                PreDay = ((mm[currentDate.month - 1] -
                                            currentDate.day) +
                                        int.parse(birthDay!))
                                    .toString();
                              } else {
                                PreDay =
                                    (int.parse(birthDay!) - currentDate.day)
                                        .toString();
                              }

                              //Next BirthDay

                              //Month
                              if (currentDate.month > int.parse(birthMonth!)) {
                                nMonth = ((12 - currentDate.month) +
                                        int.parse(birthMonth!))
                                    .toString();
                              } else {
                                nMonth =
                                    (int.parse(birthMonth!) - currentDate.month)
                                        .toString();
                              }

                              //Day
                              if (currentDate.day > int.parse(birthDay!)) {
                                nMonth = (int.parse(nMonth) - 1).toString();
                                nDay = ((mm[currentDate.month - 1] -
                                            currentDate.day) +
                                        int.parse(birthDay!))
                                    .toString();
                              } else {
                                nDay = (int.parse(birthDay!) - currentDate.day)
                                    .toString();
                              }
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                              left: 5,
                              bottom: 17,
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xff13547A),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "Calculate",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Present Age
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Present Age"),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff13547A),
                              Color(0xff203A43),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${PreYear}",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  "Year",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${PreMonth}",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  "MM",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${PreDay}",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  "DD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            //Next Birthday
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Next Birthday"),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff6BBED9),
                              Color(0xff006ACB),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${nMonth}",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  "MM",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${nDay}",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  "DD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
