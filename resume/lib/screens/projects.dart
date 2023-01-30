import 'package:flutter/material.dart';

import '../models/global.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController projectTitleController =
      TextEditingController(text: Resume.Project_Title);
  TextEditingController projectRoleController =
      TextEditingController(text: Resume.Project_Role);
  TextEditingController projectTechnologiesController =
      TextEditingController(text: Resume.Project_Technologies);
  TextEditingController projectDescriptionController =
      TextEditingController(text: Resume.Project_Description);
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
          "Projects",
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
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 800,
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
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Project Title
                    const Text(
                      "Project Title",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: projectTitleController,
                      onSaved: (val) {
                        setState(() {
                          Resume.Project_Title = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Project Title";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.teal,
                            width: 2,
                          ),
                        ),
                        hintText: "Resume Builder App",
                        hintStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Technologies",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      child: Column(
                        children: [
                          Transform.scale(
                            scale: 1.1,
                            child: CheckboxListTile(
                                value: Resume.C_Program,
                                activeColor: Colors.teal,
                                title: const Text(
                                  "C",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (val) {
                                  setState(() {
                                    Resume.C_Program = val!;
                                  });
                                }),
                          ),
                          Transform.scale(
                            scale: 1.1,
                            child: CheckboxListTile(
                                value: Resume.CPP,
                                activeColor: Colors.teal,
                                title: const Text(
                                  "C ++",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (val) {
                                  setState(() {
                                    Resume.CPP = val!;
                                  });
                                }),
                          ),
                          Transform.scale(
                            scale: 1.1,
                            child: CheckboxListTile(
                                value: Resume.Flutter,
                                activeColor: Colors.teal,
                                title: const Text(
                                  "Flutter",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (val) {
                                  setState(() {
                                    Resume.Flutter = val!;
                                  });
                                }),
                          ),
                          Transform.scale(
                            scale: 1.1,
                            child: CheckboxListTile(
                                value: Resume.Java,
                                activeColor: Colors.teal,
                                title: const Text(
                                  "Java",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (val) {
                                  setState(() {
                                    Resume.Java = val!;
                                  });
                                }),
                          ),
                          Transform.scale(
                            scale: 1.1,
                            child: CheckboxListTile(
                                value: Resume.Html_Css,
                                activeColor: Colors.teal,
                                title: const Text(
                                  "Html / Css",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (val) {
                                  setState(() {
                                    Resume.Html_Css = val!;
                                  });
                                }),
                          ),
                          Transform.scale(
                            scale: 1.1,
                            child: CheckboxListTile(
                                value: Resume.Bootstrap,
                                activeColor: Colors.teal,
                                title: const Text(
                                  "Bootstrap",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (val) {
                                  setState(() {
                                    Resume.Bootstrap = val!;
                                  });
                                }),
                          ),
                          Transform.scale(
                            scale: 1.1,
                            child: CheckboxListTile(
                                value: Resume.Android,
                                activeColor: Colors.teal,
                                title: const Text(
                                  "Android",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (val) {
                                  setState(() {
                                    Resume.Android = val!;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Roles",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: projectRoleController,
                      onSaved: (val) {
                        setState(() {
                          Resume.Project_Role = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Project Role";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.teal,
                            width: 2,
                          ),
                        ),
                        hintText: "Organize team member, Code analysis.",
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Technologies",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: projectTechnologiesController,
                      onSaved: (val) {
                        setState(() {
                          Resume.Project_Technologies = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Project Technologies";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.teal,
                            width: 2,
                          ),
                        ),
                        hintText: "5 Programmers",
                        hintStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Project Descriptions",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: projectDescriptionController,
                      onSaved: (val) {
                        setState(() {
                          Resume.Project_Description = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Project Descriptions";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.teal,
                            width: 2,
                          ),
                        ),
                        hintText: "Enter Project Descriptions",
                        hintStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          Navigator.pushNamed(context, 'options');
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Successfully"),
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.green,
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Failed"),
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.red,
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
          ),
        ),
      ),
    );
  }
}
