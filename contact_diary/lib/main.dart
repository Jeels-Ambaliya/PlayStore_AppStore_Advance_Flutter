import 'dart:io';
import 'package:contact_diary/screens/add.dart';
import 'package:contact_diary/screens/detailPage.dart';
import 'package:contact_diary/screens/edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'models/global.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Contact_Diary(),
        'add': (context) => const Add(),
        'detail_page': (context) => const Detail_Page(),
        'edit_page': (context) => const Edit_Page(),
      },
    ),
  );
}

class Contact_Diary extends StatefulWidget {
  const Contact_Diary({Key? key}) : super(key: key);

  @override
  State<Contact_Diary> createState() => _Contact_DiaryState();
}

class _Contact_DiaryState extends State<Contact_Diary> {
  makeCall({required String number}) async {
    Uri call = Uri(
      scheme: 'tel',
      path: number,
    );
    await launchUrl(call);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globals.backgroundColor,
      appBar: AppBar(
        backgroundColor: Globals.appbarColor,
        centerTitle: true,
        title: Text(
          "Contacts",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 25,
          ),
        ),
        actions: [
          Switch(
            activeColor: Colors.teal,
            value: Globals.isDark,
            onChanged: (val) {
              setState(
                () {
                  Globals.isDark = val;

                  if (Globals.isDark == true) {
                    Globals.appbarColor = Colors.black;
                    Globals.backgroundColor = Colors.black;
                    Globals.textColor = Colors.white;
                    Globals.iconColor = Colors.white;
                    Globals.buttonColor = Colors.teal;
                  } else {
                    Globals.appbarColor = Colors.white;
                    Globals.backgroundColor = Colors.white;
                    Globals.textColor = Colors.black;
                    Globals.iconColor = Colors.black;
                    Globals.buttonColor = Colors.blue;
                  }
                },
              );
            },
          ),
          Icon(
            Icons.more_vert_rounded,
            color: Globals.iconColor,
            size: 26,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: (Globals.myContact.isEmpty)
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_add_alt_1_rounded,
                    color: Colors.grey.shade500,
                    size: 250,
                  ),
                  const Text(
                    "You have no contact yet.",
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                  )
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: Globals.myContact.length,
                itemBuilder: (context, i) {
                  return Card(
                    elevation: 2,
                    child: ListTile(
                      tileColor: Globals.backgroundColor,
                      onTap: () async {
                        await Navigator.pushNamed(context, 'detail_page',
                            arguments: i);
                        setState(() {});
                      },
                      leading: CircleAvatar(
                        backgroundColor: Globals.buttonColor,
                        backgroundImage: (Globals.myContact[i].image != null)
                            ? FileImage(Globals.myContact[i].image as File)
                            : null,
                        child: (Globals.myContact[i].image == null)
                            ? const Icon(
                                Icons.person,
                              )
                            : null,
                      ),
                      title: Text(
                        "${Globals.myContact[i].fName} ${Globals.myContact[i].lName}",
                        style: TextStyle(color: Globals.textColor),
                      ),
                      subtitle: Text(
                        "+91 ${Globals.myContact[i].phoneNumber}",
                        style: TextStyle(color: Globals.textColor),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.call),
                        color: Colors.green,
                        onPressed: () {
                          // makeCall(number: Globals.myContact[i].phoneNumber!)
                          //     .toString();
                          FlutterPhoneDirectCaller.callNumber(
                              '${Globals.myContact[i].phoneNumber}');
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Globals.buttonColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Add(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
