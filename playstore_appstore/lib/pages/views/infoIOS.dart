import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoIOS extends StatefulWidget {
  const InfoIOS({Key? key}) : super(key: key);

  @override
  State<InfoIOS> createState() => _InfoIOSState();
}

class _InfoIOSState extends State<InfoIOS> {
  @override
  Widget build(BuildContext context) {
    dynamic Detail =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 15,
            right: 15,
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    color: CupertinoColors.activeBlue,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(
                      color: CupertinoColors.activeBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("${Detail['logo']}"),
                          ),
                          color: CupertinoColors.systemGrey5,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 5,
                              color: CupertinoColors.systemGrey4,
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${Detail['name']}",
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "${Detail['subname']}",
                            style: const TextStyle(
                              fontSize: 18,
                              color: CupertinoColors.systemGrey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 70,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: const Text(
                                    "GET",
                                    style: TextStyle(
                                      color: CupertinoColors.activeBlue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "In-App",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: CupertinoColors.systemGrey3,
                                        ),
                                      ),
                                      Text(
                                        "Purchases",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: CupertinoColors.systemGrey3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 50,
                                  ),
                                  child: Icon(
                                    Icons.ios_share,
                                    color: CupertinoColors.activeBlue,
                                    size: 28,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 120,
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: CupertinoColors.systemGrey,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "   7 RATINGS",
                              style: TextStyle(
                                fontSize: 16,
                                color: CupertinoColors.systemGrey,
                              ),
                            ),
                            Text(
                              "    ${Detail['rate']}",
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: CupertinoColors.systemGrey,
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  size: 18,
                                  color: CupertinoColors.systemGrey,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 18,
                                  color: CupertinoColors.systemGrey,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 18,
                                  color: CupertinoColors.systemGrey,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 18,
                                  color: CupertinoColors.systemGrey,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 18,
                                  color: CupertinoColors.systemGrey,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Container(
                          height: 100,
                          width: 120,
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: CupertinoColors.systemGrey,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "        AGE",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: CupertinoColors.systemGrey,
                                ),
                              ),
                              Text(
                                "    9+",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.systemGrey,
                                ),
                              ),
                              Text(
                                "   Years Old",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: CupertinoColors.systemGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Container(
                          height: 100,
                          width: 120,
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: CupertinoColors.systemGrey,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "         SIZE",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: CupertinoColors.systemGrey,
                                ),
                              ),
                              Text(
                                "  ${Detail['download']}",
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.systemGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Container(
                        height: 240,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("${Detail['img']}"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Container(
                          height: 240,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("${Detail['img2']}"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Ratings & Reviews",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: CupertinoColors.activeBlue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "${Detail['rate']}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            const Text(
                              "out of 5",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: CupertinoColors.systemGrey,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Text(""),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Container(
                                      height: 10,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 9,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              color: Colors.green.shade700,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Text("   "),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Container(
                                      height: 10,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 9,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.green.shade700,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Text("      "),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Container(
                                      height: 10,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 9,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.green.shade700,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Text("         "),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Container(
                                      height: 10,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 9,
                                            width: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.green.shade700,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Text("            "),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: CupertinoColors.systemGrey,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Container(
                                      height: 10,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 9,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              color: Colors.green.shade700,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
