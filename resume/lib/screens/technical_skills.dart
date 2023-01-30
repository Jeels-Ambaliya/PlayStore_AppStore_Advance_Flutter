import 'package:flutter/material.dart';

import '../models/global.dart';

class Technical_Skills extends StatefulWidget {
  const Technical_Skills({Key? key}) : super(key: key);

  @override
  State<Technical_Skills> createState() => _Technical_SkillsState();
}

class _Technical_SkillsState extends State<Technical_Skills> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int I = 0;
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
          "Technical Skills",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 10,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 5,
                      color: Colors.black54,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Enter Your Skills ",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      ...Resume.skill
                          .map(
                            (e) => Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: TextFormField(
                                      onSaved: (val) {
                                        setState(() {
                                          Resume.skill = val as List<String>;
                                        });
                                      },
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return 'Enter Skill';
                                        } else {
                                          return null;
                                        }
                                      },
                                      controller: Resume.myskillController[
                                          Resume.skill.indexOf(e)],
                                      onChanged: (val) {
                                        setState(() {
                                          Resume.skill[
                                              Resume.skill.indexOf(e)] = val;
                                        });
                                      },
                                      textInputAction: TextInputAction.next,
                                      style: const TextStyle(
                                        fontSize: 22,
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                            color: Colors.teal,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                            color: Colors.teal,
                                            width: 2,
                                          ),
                                        ),
                                        hintText: "Skill",
                                        hintStyle: const TextStyle(
                                          fontSize: 22,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: deleteItem(
                                    index: Resume.skill.indexOf(e),
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Resume.skill.add("${I++}");
                              Resume.myskillController
                                  .add(TextEditingController());
                            });
                          },
                          child: Container(
                            height: 70,
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, 'options');
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
                      "Save",
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
    );
  }

  Widget deleteItem({required int index}) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () {
        debugPrint("${Resume.skill[index]} = ${Resume.skill[index]}");
        setState(() {
          Resume.myskillController.removeAt(index);
          Resume.skill.remove(Resume.skill[index]);
        });
      },
    );
  }
}
