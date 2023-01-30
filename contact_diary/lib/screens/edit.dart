import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../models/contact.dart';
import '../models/global.dart';

class Edit_Page extends StatefulWidget {
  const Edit_Page({Key? key}) : super(key: key);

  @override
  State<Edit_Page> createState() => _Edit_PageState();
}

class _Edit_PageState extends State<Edit_Page> {
  getImageFromGallery() async {
    ImagePicker picker = ImagePicker();
    XFile? img = await picker.pickImage(source: ImageSource.gallery);

    if (img != null) {
      setState(() {
        image = File(img.path);
      });
    }
  }

  getImageFromCamera() async {
    ImagePicker picker = ImagePicker();
    XFile? img = await picker.pickImage(source: ImageSource.camera);

    if (img != null) {
      setState(() {
        image = File(img.path);
      });
    }
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController numerController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String? fName;
  String? lName;
  String? phoneNumber;
  String? email;
  File? image;

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
          "Edit",
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
          GestureDetector(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                Globals.myContact[Data].fName = fName;
                Globals.myContact[Data].lName = lName;
                Globals.myContact[Data].phoneNumber = phoneNumber;
                Globals.myContact[Data].email = email;
                Globals.myContact[Data].image = image;

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("All Detail Edit And Save"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                Navigator.pushNamed(context, '/');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please Fill All Detail"),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
            },
            child: Icon(
              Icons.done,
              color: Globals.iconColor,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 70,
                        foregroundImage:
                            (image != null) ? FileImage(image!) : null,
                        backgroundColor: Colors.blueGrey,
                        child: const Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Globals.buttonColor,
                        mini: true,
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Take Image From"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Divider(
                                    thickness: 1,
                                    color: Globals.buttonColor,
                                  ),
                                  TextButton.icon(
                                    onPressed: () {
                                      getImageFromCamera();
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.camera_alt_rounded,
                                      size: 24,
                                      color: Colors.teal,
                                    ),
                                    label: const Text(
                                      "Camera",
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  TextButton.icon(
                                    onPressed: () {
                                      getImageFromGallery();
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.image,
                                      size: 24,
                                      color: Colors.teal,
                                    ),
                                    label: const Text(
                                      "Gallery",
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.image,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onSaved: (val) {
                      fName = val;
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter First Name...";
                      } else {
                        return null;
                      }
                    },
                    textInputAction: TextInputAction.next,
                    initialValue: Globals.myContact[Data].fName,
                    style: TextStyle(
                      fontSize: 21,
                      color: Globals.textColor,
                    ),
                    decoration: InputDecoration(
                      labelText: "First Name",
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Globals.buttonColor,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Globals.buttonColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    initialValue: Globals.myContact[Data].lName,
                    onSaved: (val) {
                      lName = val;
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Last Name...";
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(
                      fontSize: 21,
                      color: Globals.textColor,
                    ),
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Globals.buttonColor,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Globals.buttonColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    onSaved: (val) {
                      phoneNumber = val;
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Phone Number..";
                      } else {
                        return null;
                      }
                    },
                    initialValue: Globals.myContact[Data].phoneNumber,
                    style: TextStyle(
                      fontSize: 21,
                      color: Globals.textColor,
                    ),
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Globals.buttonColor,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Globals.buttonColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    initialValue: Globals.myContact[Data].email,
                    onSaved: (val) {
                      email = val;
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter EmailId...";
                      } else {
                        return null;
                      }
                    },
                    style: TextStyle(
                      fontSize: 21,
                      color: Globals.textColor,
                    ),
                    decoration: InputDecoration(
                      labelText: "Email ID",
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Globals.buttonColor,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Globals.buttonColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
