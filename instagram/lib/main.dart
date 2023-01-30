import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Insta(),
    ),
  );
}

class Insta extends StatefulWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  bool isTap = false;
  bool isTap2 = false;
  bool isTap3 = false;
  bool isTap4 = false;
  bool isTap5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.add_box_outlined,
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.message_outlined,
            size: 35,
          ),
          SizedBox(
            width: 7,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Container(
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTap = !isTap;
                          });
                        },
                        child: CircleAvatar(
                          radius: 47,
                          backgroundColor:
                              (isTap) ? Colors.green : Colors.deepOrange,
                          child: const CircleAvatar(
                            radius: 44,
                            backgroundImage:
                                AssetImage("assets/storyPic/jeels.jpg"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTap2 = !isTap2;
                          });
                        },
                        child: CircleAvatar(
                          radius: 47,
                          backgroundColor:
                              (isTap2) ? Colors.green : Colors.deepOrange,
                          child: const CircleAvatar(
                            radius: 44,
                            backgroundImage:
                                AssetImage("assets/storyPic/jeels2.jpg"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTap3 = !isTap3;
                          });
                        },
                        child: CircleAvatar(
                          radius: 47,
                          backgroundColor:
                              (isTap3) ? Colors.green : Colors.deepOrange,
                          child: const CircleAvatar(
                            radius: 44,
                            backgroundImage:
                                AssetImage("assets/storyPic/jeels3.jpg"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTap4 = !isTap4;
                          });
                        },
                        child: CircleAvatar(
                          radius: 47,
                          backgroundColor:
                              (isTap4) ? Colors.green : Colors.deepOrange,
                          child: const CircleAvatar(
                            radius: 44,
                            backgroundImage:
                                AssetImage("assets/storyPic/jeels4.jpg"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTap5 = !isTap5;
                          });
                        },
                        child: CircleAvatar(
                          radius: 47,
                          backgroundColor:
                              (isTap5) ? Colors.green : Colors.deepOrange,
                          child: const CircleAvatar(
                            radius: 44,
                            backgroundImage:
                                AssetImage("assets/storyPic/jeels5.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.black,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    myPost(path: "assets/storyPic/jeels7.jpg"),
                    myPost(path: "assets/storyPic/jeels9.jpg"),
                    myPost(path: "assets/storyPic/jeels8.jpg"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myPost({required path}) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 450,
        width: 420,
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/storyPic/jeels.jpg"),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "jeels_ambaliya",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 150,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ],
            )),
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  "$path",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.comment_bank_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.ios_share,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Icon(
                    Icons.bookmark_add_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
