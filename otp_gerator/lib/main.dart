import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OTP(),
    ),
  );
}

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  Random r = Random();
  List<int>? outputVal;

  int? length;
  final textCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff15172B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "OTP Generator",
              style: TextStyle(
                fontSize: 40,
                color: Color(0xffF6DB87),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                controller: textCon,
                onChanged: (val) {
                  print(val.runtimeType);
                  setState(() {
                    length = int.parse(val);
                  });
                },
                style: const TextStyle(
                  fontSize: 25,
                  color: Color(0xffFCF6BA),
                ),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter OTP Length.',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffFcF6BA),
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffFcF6BA),
                    ),
                  ),
                ),
                maxLength: 1,
              ),
            ),
            GestureDetector(
              onTap: () {
                outputVal = [];
                setState(() {
                  length ??= 0;
                  for (int i = 0; i < length!; i++) {
                    int temp = r.nextInt(10);
                    outputVal!.add(temp);
                  }
                });
              },
              child: Container(
                height: 60,
                width: 270,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFFE8B8),
                      Color(0xffF6Db87),
                    ],
                  ),
                ),
                child: const Text(
                  "Generate OTP",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff15172B),
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              width: 340,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffFFE8B8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  outputVal?.length ?? 0,
                  (i) => Text(
                    outputVal![i].toString(),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  textCon.clear();
                  outputVal = [];
                });
              },
              child: Container(
                height: 50,
                width: 180,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.grey,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFFE8B8),
                      Color(0xffF6Db87),
                    ],
                  ),
                ),
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff15172B),
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
