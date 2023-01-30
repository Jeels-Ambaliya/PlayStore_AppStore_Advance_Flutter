import 'package:flutter/material.dart';
import 'package:resume/screens/achievements.dart';
import 'package:resume/screens/build_options.dart';
import 'package:resume/screens/builder_page.dart';
import 'package:resume/screens/carrier_objective.dart';
import 'package:resume/screens/contact_info.dart';
import 'package:resume/screens/declaration.dart';
import 'package:resume/screens/education.dart';
import 'package:resume/screens/experience.dart';
import 'package:resume/screens/hobbies.dart';
import 'package:resume/screens/personal_detail.dart';
import 'package:resume/screens/projects.dart';
import 'package:resume/screens/references.dart';
import 'package:resume/screens/technical_skills.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const StartPage(),
        'builder': (context) => const Builder_Page(),
        'options': (context) => const Build_Options(),
        'contact_info': (context) => const Contact_Info(),
        'carrier_objective': (context) => const Carrier_Objective(),
        'personal_detail': (context) => const Personal_Detail(),
        'education': (context) => const Education(),
        'experience': (context) => const Experience(),
        'technical_skills': (context) => const Technical_Skills(),
        'hobbies': (context) => const Hobbies(),
        'projects': (context) => const Projects(),
        'achievements': (context) => const Achievements(),
        'references': (context) => const References(),
        'declaration': (context) => const Declaration(),
      },
    ),
  );
}

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/start.png"),
            const Text(
              "Resume Builder App",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'builder');
              },
              child: Container(
                height: 70,
                width: 190,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 5,
                      color: Colors.black54,
                      offset: Offset(3, 5),
                    ),
                  ],
                ),
                child: Text(
                  "Start",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.teal.shade800,
                    fontWeight: FontWeight.w700,
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
