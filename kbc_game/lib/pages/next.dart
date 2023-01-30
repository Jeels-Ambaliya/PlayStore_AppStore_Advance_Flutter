import 'package:flutter/material.dart';
import 'package:kbc_game/main.dart';

class Next_Page extends StatefulWidget {
  int S;
  Next_Page({Key? key, required this.S}) : super(key: key);

  @override
  State<Next_Page> createState() => _Next_PageState();
}

class _Next_PageState extends State<Next_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Next Page",
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
                  child: Image.asset("assets/images/fire-cracker.png"),
                ),
                const Text(
                  "Your Answer Is Correct..",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Your Won",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "₹ ${widget.S}",
                  style: const TextStyle(
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
                  Route next = MaterialPageRoute(
                    builder: (context) => KBC(),
                  );
                  Navigator.of(context).pop(next);
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
                  "Next",
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
