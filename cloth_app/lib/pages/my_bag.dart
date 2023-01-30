import 'package:cloth_app/pages/detail.dart';
import 'package:flutter/material.dart';

import '../models/globals.dart';

class My_Cart extends StatefulWidget {
  const My_Cart({Key? key}) : super(key: key);

  @override
  State<My_Cart> createState() => _My_CartState();
}

class _My_CartState extends State<My_Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "CART",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: Globals.product
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Detail(
                              Pic1: e['pic1'],
                              Company: "${e['company']}",
                              Price: e['price'],
                              Dec: "${e['dec']}"),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      color: Colors.grey.shade300,
                      child: ListTile(
                        leading: Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(e['pic1']),
                        ),
                        title: Text(
                          "${e['company']}",
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          "${e['dec']}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: Text(
                          "${e['price']} ₹",
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
