import 'package:flutter/material.dart';
import 'package:kbc_game/main.dart';

class Lose_Page extends StatefulWidget {
  const Lose_Page({Key? key}) : super(key: key);

  @override
  State<Lose_Page> createState() => _Lose_PageState();
}

class _Lose_PageState extends State<Lose_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Try Again",
          style: TextStyle(
            fontSize: 25,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/images/lose.png"),
                ),
                const Text(
                  "Oops...",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                Text(
                  "Sorry You Are",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "The Lose.",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Route again = MaterialPageRoute(
                    builder: (context) => KBC(),
                  );
                  Navigator.of(context)
                      .pushAndRemoveUntil(again, (route) => false);
                });
              },
              child: Container(
                height: 75,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Try Again",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
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
