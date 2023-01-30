import 'package:flutter/material.dart';

import '../models/global.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController companyNameController =
      TextEditingController(text: Resume.Company_Name);
  TextEditingController companyPositionController =
      TextEditingController(text: Resume.Company_Position);
  TextEditingController companyRolesController =
      TextEditingController(text: Resume.Company_Role);
  TextEditingController companyPEDateJoinedController = TextEditingController(
      text: (Resume.PE_Date_Joined != null)
          ? Resume.PE_Date_Joined.toString()
          : null);
  TextEditingController companyPEDateEndController = TextEditingController(
      text: (Resume.PE_Date_Exit != null)
          ? Resume.PE_Date_Exit.toString()
          : null);
  TextEditingController companyCEDateJoinedController = TextEditingController(
      text: (Resume.CE_Date_Joined != null)
          ? Resume.CE_Date_Joined.toString()
          : null);
  int Index = 0;

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
          "Experience",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Company Name",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: companyNameController,
                      onSaved: (val) {
                        setState(() {
                          Resume.Company_Name = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Experience Company Name";
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
                        hintText: "Ex : Infosys",
                        hintStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Position",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: companyPositionController,
                      onSaved: (val) {
                        setState(() {
                          Resume.Company_Position = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Experience Company Position";
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
                        hintText: "Ex : Quality Test Engineer",
                        hintStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Roles",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: Colors.teal,
                        ),
                      ),
                      child: TextFormField(
                        controller: companyRolesController,
                        onSaved: (val) {
                          setState(() {
                            Resume.Company_Role = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Experience Company Role";
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        maxLines: 7,
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                              width: 2,
                            ),
                          ),
                          hintText:
                              "Ex : Working with team member to come up with new concept and product analysis...",
                          hintStyle: TextStyle(
                            fontSize: 22,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Employee Status",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: Colors.teal,
                          value: "PreviouslyEmployee",
                          groupValue: Resume.Exp,
                          onChanged: (val) {
                            setState(() {
                              Resume.Exp = val;
                              Resume.Exp_Index = 0;
                            });
                          },
                        ),
                        const Text(
                          "Previously\n Employee",
                          style: TextStyle(
                            color: Colors.teal,
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Radio(
                          activeColor: Colors.teal,
                          value: "CurrentlyEmployee",
                          groupValue: Resume.Exp,
                          onChanged: (val) {
                            setState(() {
                              Resume.Exp = val;
                              Resume.Exp_Index = 1;
                              Resume.PE_Date_Joined = null;
                              Resume.PE_Date_Exit = null;
                            });
                          },
                        ),
                        const Text(
                          "Currently\n Employee",
                          style: TextStyle(
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.teal,
                      height: 3,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    IndexedStack(
                      index: Resume.Exp_Index,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Date Joined",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  height: 45,
                                  width: 140,
                                  child: TextFormField(
                                    controller: companyPEDateJoinedController,
                                    onSaved: (val) {
                                      setState(() {
                                        Resume.PE_Date_Joined = int.parse(val!);
                                      });
                                    },
                                    validator: (val) {
                                      if (Resume.Exp == "PreviouslyEmployee") {
                                        if (val!.isEmpty) {
                                          return "Enter Date Of Join";
                                        } else {
                                          return null;
                                        }
                                      } else {
                                        null;
                                      }
                                    },
                                    keyboardType: TextInputType.number,
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
                                      hintText: "DD / MM / YYYY",
                                      hintStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Date Exit",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  height: 45,
                                  width: 140,
                                  child: TextFormField(
                                    controller: companyPEDateEndController,
                                    onSaved: (val) {
                                      setState(() {
                                        Resume.PE_Date_Exit = int.parse(val!);
                                      });
                                    },
                                    validator: (val) {
                                      if (Resume.Exp == "PreviouslyEmployee") {
                                        if (val!.isEmpty) {
                                          return "Enter Date Of Exit";
                                        } else {
                                          return null;
                                        }
                                      } else {
                                        null;
                                      }
                                    },
                                    keyboardType: TextInputType.number,
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
                                      hintText: "DD / MM / YYYY",
                                      hintStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 24,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Date Joined",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  height: 45,
                                  width: 140,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: companyCEDateJoinedController,
                                    onSaved: (val) {
                                      setState(() {
                                        Resume.CE_Date_Joined = int.parse(val!);
                                      });
                                    },
                                    validator: (val) {
                                      if (Resume.Exp == "CurrentlyEmployee") {
                                        if (val!.isEmpty) {
                                          return "Enter Date Of Join";
                                        } else {
                                          return null;
                                        }
                                      } else {
                                        null;
                                      }
                                    },
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
                                      hintText: "DD / MM / YYYY",
                                      hintStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, 'options');
                          formKey.currentState!.save();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Successfully"),
                              backgroundColor: Colors.green,
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Failed"),
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
          ),
        ),
      ),
    );
  }
}
