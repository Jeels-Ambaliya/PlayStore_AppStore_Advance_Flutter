import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/global.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class Detail_Page extends StatefulWidget {
  const Detail_Page({Key? key}) : super(key: key);

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> {
  makeCall({required String number}) async {
    Uri call = Uri(
      scheme: 'tel',
      path: number,
    );
    await launchUrl(call);
  }

  sendSms({required String number}) async {
    Uri sms = Uri(
      scheme: 'sms',
      path: number,
    );
    await launchUrl(sms);
  }

  sendMail({required String mail}) async {
    Uri email = Uri(
      scheme: 'mailto',
      path: mail,
    );
    await launchUrl(email);
  }

  Future<void> _copyToClicpboard({required String phoneNumber}) async {
    await Clipboard.setData(
      ClipboardData(
        text: phoneNumber,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Copied To Clipboard'),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.teal,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int Data = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      backgroundColor: Globals.backgroundColor,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Globals.iconColor,
          ),
        ),
        backgroundColor: Globals.appbarColor,
        centerTitle: true,
        title: Text(
          "Contact",
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
          PopupMenuButton(
            color: Globals.textColor,
            child: Icon(
              Icons.more_vert,
              color: Globals.iconColor,
              size: 30,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 0,
                  child: Text(
                    "Edit",
                    style: TextStyle(
                      color: Globals.backgroundColor,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Delete",
                    style: TextStyle(
                      color: Globals.backgroundColor,
                    ),
                  ),
                ),
              ];
            },
            onSelected: (val) async {
              if (val == 0) {
                await Navigator.of(context)
                    .pushNamed('edit_page', arguments: Data);
                setState(() {});
              } else if (val == 1) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Delete Contact ?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("No"),
                        ),
                        TextButton(
                          child: const Text("Yes"),
                          onPressed: () {
                            Globals.myContact.removeAt(Data);
                            Navigator.of(context)
                                .pushNamedAndRemoveUntil('/', (route) => false);
                          },
                        ),
                      ],
                    );
                  },
                );
              }
            },
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                CircleAvatar(
                  radius: 105,
                  backgroundColor: (Globals.isDark)
                      ? Colors.grey.shade700
                      : Colors.grey.shade300,
                  backgroundImage: (Globals.myContact[Data].image != null)
                      ? FileImage(Globals.myContact[Data].image!)
                      : null,
                  child: (Globals.myContact[Data].image == null)
                      ? Text(
                          "${Globals.myContact[Data].fName![0]}${Globals.myContact[Data].lName![0]}",
                          style: TextStyle(
                            fontSize: 80,
                            color: Globals.textColor,
                          ),
                        )
                      : null,
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    "${Globals.myContact[Data].fName} ${Globals.myContact[Data].lName}",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Globals.textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    height: 75,
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: (Globals.isDark)
                          ? Colors.grey.shade700
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SelectableText(
                            "+91 ${Globals.myContact[Data].phoneNumber}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Globals.textColor,
                            ),
                            toolbarOptions: const ToolbarOptions(
                              copy: true,
                              selectAll: true,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: IconButton(
                              icon: Icon(
                                Icons.copy,
                                color: Globals.textColor,
                              ),
                              onPressed: () {
                                _copyToClicpboard(
                                  phoneNumber:
                                      "+91 ${Globals.myContact[Data].phoneNumber}",
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        makeCall(number: Globals.myContact[Data].phoneNumber!)
                            .toString();
                      },
                      backgroundColor: Colors.green,
                      child: const Icon(
                        Icons.call,
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        sendSms(number: Globals.myContact[Data].phoneNumber!)
                            .toString();
                      },
                      backgroundColor: Colors.blue,
                      child: const Icon(
                        Icons.message,
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        sendMail(mail: Globals.myContact[Data].email!)
                            .toString();
                      },
                      backgroundColor: Colors.red,
                      child: const Icon(
                        Icons.email,
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          Share.share(
                              "Name : ${Globals.myContact[Data].fName} ${Globals.myContact[Data].lName}\n Contact No : ${Globals.myContact[Data].phoneNumber}\nEmailId : ${Globals.myContact[Data].email}");
                        });
                      },
                      backgroundColor: Colors.orange,
                      child: const Icon(
                        Icons.share,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
