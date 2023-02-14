import 'package:flutter/material.dart';

import '../globals/globals.dart';

class ForYou extends StatefulWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Games",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 7),
                child: Icon(Icons.arrow_forward, color: Colors.black),
              ),
            ],
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Globals.Games.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Map<String, dynamic> map = {
                        'logo': e['logo'],
                        'img': e['img'],
                        'img2': e['img2'],
                        'name': e['name'],
                        'rate': e['rate'],
                        'subname': e['subname'],
                        'review': e['review'],
                        'download': e['download'],
                        'storage': e['storage'],
                      };
                      Navigator.pushNamed(context, 'info', arguments: map);
                    },
                    child: SizedBox(
                      height: 150,
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 2,
                            ),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 0.5,
                                    blurRadius: 1,
                                    color: Colors.grey.shade400,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: NetworkImage("${e['logo']}"),
                                ),
                              ),
                            ),
                          ),
                          Text("${e['name']}"),
                          Row(
                            children: [
                              Text("${e['rate']}"),
                              const Icon(
                                Icons.star,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "New & Updated apps",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 7),
                child: Icon(Icons.arrow_forward, color: Colors.black),
              ),
            ],
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Globals.NewApp.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Map<String, dynamic> map = {
                        'logo': e['logo'],
                        'img': e['img'],
                        'img2': e['img2'],
                        'name': e['name'],
                        'rate': e['rate'],
                        'subname': e['subname'],
                        'review': e['review'],
                        'download': e['download'],
                        'storage': e['storage'],
                      };
                      Navigator.pushNamed(context, 'info', arguments: map);
                    },
                    child: SizedBox(
                      height: 150,
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 2,
                            ),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 0.5,
                                    blurRadius: 1,
                                    color: Colors.grey.shade400,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: NetworkImage("${e['logo']}"),
                                ),
                              ),
                            ),
                          ),
                          Text("${e['name']}"),
                          Row(
                            children: [
                              Text("${e['rate']}"),
                              const Icon(
                                Icons.star,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Suggested for you",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 7),
                child: Icon(Icons.arrow_forward, color: Colors.black),
              ),
            ],
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Globals.Suggested.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Map<String, dynamic> map = {
                        'logo': e['logo'],
                        'img': e['img'],
                        'img2': e['img2'],
                        'name': e['name'],
                        'rate': e['rate'],
                        'subname': e['subname'],
                        'review': e['review'],
                        'download': e['download'],
                        'storage': e['storage'],
                      };
                      Navigator.pushNamed(context, 'info', arguments: map);
                    },
                    child: SizedBox(
                      height: 150,
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 2,
                            ),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 0.5,
                                    blurRadius: 1,
                                    color: Colors.grey.shade400,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: NetworkImage("${e['logo']}"),
                                ),
                              ),
                            ),
                          ),
                          Text("${e['name']}"),
                          Row(
                            children: [
                              Text("${e['rate']}"),
                              const Icon(
                                Icons.star,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
