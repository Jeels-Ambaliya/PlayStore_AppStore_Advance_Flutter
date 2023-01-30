import 'package:flutter/material.dart';
import 'package:kbc_game/pages/lose.dart';
import 'package:kbc_game/pages/next.dart';
import 'package:kbc_game/pages/win.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KBC(),
    ),
  );
}

class KBC extends StatefulWidget {
  const KBC({Key? key}) : super(key: key);

  @override
  State<KBC> createState() => _KBCState();
}

class _KBCState extends State<KBC> {
  List<Map<String, dynamic>> queBank = [
    {
      'Id': 1,
      'Que': "What Is Flutter",
      'A': "Flutter Is An Open-Source DBMS",
      'B': "Flutter Is An Open-Source UI Toolkit",
      'C': "Flutter Is An Open-Source Backend Toolkit",
      'D': "All Of Above",
      'Ans': "Flutter Is An Open-Source UI Toolkit",
    },
    {
      'Id': 2,
      'Que': "The First Alpha Version Of Flutter Was Released in _________.",
      'A': "May 2017",
      'B': "May 2018",
      'C': "May 2016",
      'D': "May 2019",
      'Ans': "May 2017",
    },
    {
      'Id': 3,
      'Que': "Flutter Is Devlope By__________.",
      'A': "Microsoft",
      'B': "Facebook",
      'C': "Google",
      'D': "IBM",
      'Ans': "Google",
    },
    {
      'Id': 4,
      'Que': "Is Flutter A Programming Language ?",
      'A': "Yes",
      'B': "No",
      'C': "May Be",
      'D': "Can't Say",
      'Ans': "No",
    },
    {
      'Id': 5,
      'Que': "Is Flutter A SDK ?",
      'A': "Yes",
      'B': "No",
      'C': "May Be",
      'D': "Can't Say",
      'Ans': "Yes",
    },
    {
      'Id': 6,
      'Que': "What Are The Different Build Modes In Flutter ?",
      'A': "Debug",
      'B': "Profile",
      'C': "Release",
      'D': "All Of The Above",
      'Ans': "All Of The Above",
    },
    {
      'Id': 7,
      'Que': "_______ Are Some Popular Apps That Use Flutter.",
      'A': "Google Ads",
      'B': "Birch Finance",
      'C': "Alibaba",
      'D': "All Of The Above",
      'Ans': "All Of The Above",
    },
    {
      'Id': 8,
      'Que':
          "_______ Is Used When You Create The Flutter Application For Android.",
      'A': "IOS Folder",
      'B': "Android Folder",
      'C': "Google Folder",
      'D': "Text Folder",
      'Ans': "Android Folder",
    },
    {
      'Id': 9,
      'Que': "WidgetApp Is Used For Basic Navigation ?",
      'A': "Yes",
      'B': "No",
      'C': "Can Be Yes Or No",
      'D': "Can Not Say",
      'Ans': "Yes",
    },
    {
      'Id': 10,
      'Que':
          "The Flutter Tooling Supports _________ Modes While Compiling The Application ?",
      'A': "2",
      'B': "3",
      'C': "4",
      'D': "5",
      'Ans': "3",
    },
  ];

  int I = 0;
  int Score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "KBC GAME",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Colors.black87,
              Colors.blue,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IndexedStack(
              index: I,
              children: queBank
                  .map(
                    (e) => Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Que ${e["Id"]} :- ${e["Que"]}",
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              mcq(Opp: e['A'], index: 'A', Ans: e['Ans']),
                              mcq(Opp: e['B'], index: 'B', Ans: e['Ans']),
                              mcq(Opp: e['C'], index: 'C', Ans: e['Ans']),
                              mcq(Opp: e['D'], index: 'D', Ans: e['Ans']),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget mcq(
      {required String Opp, required String index, required String Ans}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (I < 9) {
            if (Opp == Ans) {
              setState(() {
                I++;
                Score += 1000000;
                Route win = MaterialPageRoute(
                  builder: (context) => Next_Page(
                    S: Score,
                  ),
                );
                Navigator.of(context).push(win);
              });
            } else {
              Score == 0;
              Route lose = MaterialPageRoute(
                builder: (context) => const Lose_Page(),
              );
              Navigator.of(context).push(lose);
            }
          } else {
            Route fin = MaterialPageRoute(
              builder: (context) => const Win(),
            );
            Navigator.of(context).push(fin);
          }
        });
      },
      child: Container(
        height: 70,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.black,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$index)  $Opp",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
