import 'package:flutter/material.dart';

class Builder_Page extends StatefulWidget {
  const Builder_Page({Key? key}) : super(key: key);

  @override
  State<Builder_Page> createState() => _Builder_PageState();
}

class _Builder_PageState extends State<Builder_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          "Resume Builder",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 75,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
            child: const Text(
              "RESUMES",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 100,
            ),
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("assets/images/open-cardboard-box.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Text(
              "No Resumes + Create New Resume.",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'options');
        },
        child: Container(
          height: 75,
          width: 75,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.teal,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 10,
                color: Colors.black54,
                offset: Offset(1, 3),
              ),
            ],
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}
