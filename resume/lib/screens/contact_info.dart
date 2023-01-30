import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../models/global.dart';

class Contact_Info extends StatefulWidget {
  const Contact_Info({Key? key}) : super(key: key);

  @override
  State<Contact_Info> createState() => _Contact_InfoState();
}

class _Contact_InfoState extends State<Contact_Info> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int Index = 0;
  Color myConCol = Colors.teal.shade900;
  Color myPhoCol = Colors.teal;

  TextEditingController nameController =
      TextEditingController(text: Resume.Name);
  TextEditingController emailController =
      TextEditingController(text: Resume.Email);
  TextEditingController phoneController = TextEditingController(
      text: (Resume.Phone_No != null) ? (Resume.Phone_No).toString() : null);
  TextEditingController address1Controller =
      TextEditingController(text: Resume.Address1);
  TextEditingController address2Controller =
      TextEditingController(text: Resume.Address2);
  TextEditingController address3Controller =
      TextEditingController(text: Resume.Address3);

  getFromGallery() async {
    ImagePicker picker = ImagePicker();
    XFile? img = await picker.pickImage(source: ImageSource.gallery);

    if (img != null) {
      setState(() {
        Resume.Image = File(img.path);
      });
    }
  }

  getFromCamera() async {
    ImagePicker picker = ImagePicker();
    XFile? img = await picker.pickImage(source: ImageSource.camera);

    if (img != null) {
      setState(() {
        Resume.Image = File(img.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          "Contact Info",
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
          Expanded(
            child: Container(
              height: 75,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.teal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Index = 0;
                        myConCol = Colors.teal.shade900;
                        myPhoCol = Colors.teal;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 3,
                            color: myConCol,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Contact",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Index = 1;
                        myPhoCol = Colors.teal.shade900;
                        myConCol = Colors.teal;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 3,
                            color: myPhoCol,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Photo",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: IndexedStack(
              index: Index,
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 580,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 5,
                            color: Colors.black54,
                            offset: Offset(2, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Icon(
                                      Icons.person_outline,
                                      size: 50,
                                      color: Colors.teal,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: SizedBox(
                                      height: 53,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: TextFormField(
                                        controller: nameController,
                                        onSaved: (val) {
                                          setState(() {
                                            Resume.Name = val;
                                          });
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Name";
                                          } else {
                                            return null;
                                          }
                                        },
                                        textInputAction: TextInputAction.next,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                        decoration: const InputDecoration(
                                          hintText: "Name",
                                          hintStyle: TextStyle(
                                            fontSize: 18,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.teal,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 2,
                                              color: Colors.teal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Icon(
                                      Icons.email_outlined,
                                      size: 50,
                                      color: Colors.teal,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: SizedBox(
                                      height: 53,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: TextFormField(
                                        controller: emailController,
                                        onSaved: (val) {
                                          setState(() {
                                            Resume.Email = val;
                                          });
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Email Id";
                                          } else {
                                            return null;
                                          }
                                        },
                                        textInputAction: TextInputAction.next,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                        decoration: const InputDecoration(
                                          hintText: "Email",
                                          hintStyle: TextStyle(
                                            fontSize: 18,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          labelStyle: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 18,
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 2,
                                              color: Colors.teal,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.teal,
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
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Icon(
                                      Icons.phone_iphone_outlined,
                                      size: 50,
                                      color: Colors.teal,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: SizedBox(
                                      height: 53,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: TextFormField(
                                        controller: phoneController,
                                        onSaved: (val) {
                                          setState(() {
                                            Resume.Phone_No = int.parse(val!);
                                          });
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Phone Number";
                                          } else {
                                            if (val.length == 10) {
                                              return null;
                                            } else {
                                              return "Please Enter Valid Mobile Number.";
                                            }
                                          }
                                        },
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.number,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                        decoration: const InputDecoration(
                                          hintText: "Phone No",
                                          hintStyle: TextStyle(
                                            fontSize: 18,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          labelStyle: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 18,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.teal,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 2,
                                              color: Colors.teal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      size: 50,
                                      color: Colors.teal,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: SizedBox(
                                      height: 53,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: TextFormField(
                                        controller: address1Controller,
                                        onSaved: (val) {
                                          setState(() {
                                            Resume.Address1 = val;
                                          });
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Address";
                                          } else {
                                            return null;
                                          }
                                        },
                                        textInputAction: TextInputAction.next,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                        decoration: const InputDecoration(
                                          hintText:
                                              "Address (Street,Building No)",
                                          hintStyle: TextStyle(
                                            fontSize: 18,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          labelStyle: TextStyle(
                                            fontSize: 18,
                                            color: Colors.teal,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.teal,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 2,
                                              color: Colors.teal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    width: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: SizedBox(
                                      height: 53,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: TextFormField(
                                        controller: address2Controller,
                                        onSaved: (val) {
                                          setState(() {
                                            Resume.Address2 = val;
                                          });
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Address";
                                          } else {
                                            return null;
                                          }
                                        },
                                        textInputAction: TextInputAction.next,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                        decoration: const InputDecoration(
                                          hintText: "Address Line 2",
                                          hintStyle: TextStyle(
                                            fontSize: 18,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          labelStyle: TextStyle(
                                            fontSize: 18,
                                            color: Colors.teal,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.teal,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 2,
                                              color: Colors.teal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    width: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: SizedBox(
                                      height: 53,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: TextFormField(
                                        controller: address3Controller,
                                        onSaved: (val) {
                                          setState(() {
                                            Resume.Address3 = val;
                                          });
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Address";
                                          } else {
                                            return null;
                                          }
                                        },
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                        decoration: const InputDecoration(
                                          hintText: "Address Line 3",
                                          hintStyle: TextStyle(
                                            fontSize: 18,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.teal,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 2,
                                              color: Colors.teal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  setState(() {
                                    Index = 1;
                                    myPhoCol = Colors.teal.shade900;
                                    myConCol = Colors.teal;
                                  });
                                  formKey.currentState!.save();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Successfully Validation"),
                                      backgroundColor: Colors.green,
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Failed Validation"),
                                      backgroundColor: Colors.red,
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                }
                                // nameController.clear();
                                // emailController.clear();
                                // phoneController.clear();
                                // address1Controller.clear();
                                // address2Controller.clear();
                                // address3Controller.clear();
                              },
                              child: Container(
                                height: 120,
                                width: double.infinity,
                                alignment: Alignment.center,
                                child: Container(
                                  height: 60,
                                  width: 160,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text(
                                    "Next",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 350,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 5,
                            color: Colors.black54,
                            offset: Offset(2, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 80,
                                foregroundImage: (Resume.Image != null)
                                    ? FileImage(Resume.Image!)
                                    : null,
                                backgroundColor: Colors.grey.shade300,
                                child: const Text(
                                  "ADD",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text("Take Image From"),
                                      content: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Divider(
                                            thickness: 1,
                                            color: Colors.teal,
                                          ),
                                          TextButton.icon(
                                            onPressed: () {
                                              getFromCamera();
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
                                              getFromGallery();
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(
                                              Icons.camera,
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
                                child: Icon(Icons.camera),
                                backgroundColor: Colors.teal,
                                mini: true,
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('options');
                            },
                            child: Container(
                              height: 120,
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Container(
                                height: 60,
                                width: 160,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  "Next",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
