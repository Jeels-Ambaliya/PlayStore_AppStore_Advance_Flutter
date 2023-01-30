import 'package:flutter/material.dart';
import 'package:resume/models/global.dart';

class Personal_Detail extends StatefulWidget {
  const Personal_Detail({Key? key}) : super(key: key);

  @override
  State<Personal_Detail> createState() => _Personal_DetailState();
}

class _Personal_DetailState extends State<Personal_Detail> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController dobController = TextEditingController(
      text: (Resume.DOB != null) ? (Resume.DOB).toString() : null);
  TextEditingController nationalityController =
      TextEditingController(text: Resume.Nationality);

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
          "Personal Details",
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
          height: 750,
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
                    const Text(
                      "DOB",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: dobController,
                      onSaved: (val) {
                        setState(() {
                          Resume.DOB = int.parse(val!);
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Date Of Birth";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
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
                      "Marital Status",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      height: 115,
                      child: Column(
                        children: [
                          Transform.scale(
                            scale: 1.1,
                            child: RadioListTile(
                              value: "Single",
                              title: const Text(
                                "Single",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              activeColor: Colors.teal,
                              groupValue: Resume.Marital_Status,
                              onChanged: (val) {
                                setState(() {
                                  Resume.Marital_Status = val;
                                });
                              },
                            ),
                          ),
                          Transform.scale(
                            scale: 1.1,
                            child: RadioListTile(
                              value: "Married",
                              title: const Text(
                                "Married",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              activeColor: Colors.teal,
                              groupValue: Resume.Marital_Status,
                              onChanged: (val) {
                                setState(() {
                                  Resume.Marital_Status = val;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Languages Know",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      height: 170,
                      child: Column(
                        children: [
                          Transform.scale(
                            scale: 1.1,
                            child: CheckboxListTile(
                                value: Resume.English,
                                activeColor: Colors.teal,
                                title: const Text(
                                  "English",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (val) {
                                  setState(() {
                                    Resume.English = val!;
                                  });
                                }),
                          ),
                          Transform.scale(
                            scale: 1.1,
                            child: CheckboxListTile(
                                value: Resume.Hindi,
                                activeColor: Colors.teal,
                                title: const Text(
                                  "Hindi",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (val) {
                                  setState(() {
                                    Resume.Hindi = val!;
                                  });
                                }),
                          ),
                          Transform.scale(
                            scale: 1.1,
                            child: CheckboxListTile(
                                value: Resume.Gujarati,
                                activeColor: Colors.teal,
                                title: const Text(
                                  "Gujarati",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (val) {
                                  setState(() {
                                    Resume.Gujarati = val!;
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
                      "Nationality",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: nationalityController,
                      onSaved: (val) {
                        setState(() {
                          Resume.Nationality = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Nationality";
                        } else {
                          return null;
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
                        hintText: "Indian",
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
