import 'package:flutter/material.dart';
import 'package:resume/models/global.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController courseController =
      TextEditingController(text: Resume.Course);
  TextEditingController collegeController =
      TextEditingController(text: Resume.College);
  TextEditingController scoreController =
      TextEditingController(text: Resume.Score);
  TextEditingController passingYearController = TextEditingController(
      text: (Resume.Passing_Year != null)
          ? (Resume.Passing_Year).toString()
          : null);
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
          "Education",
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
            height: 650,
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
                      "Course/Degree",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: courseController,
                      onSaved: (val) {
                        setState(() {
                          Resume.Course = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Enter Course Or Degree';
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
                        hintText: "Ex : BCA / B.Sc(IT)",
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
                      "School/College/Institute",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: collegeController,
                      onSaved: (val) {
                        setState(() {
                          Resume.College = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Enter School Or College';
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
                        hintText: "Ex : UKA Tarasadiya University",
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
                      "Score",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: scoreController,
                      onSaved: (val) {
                        setState(() {
                          Resume.Score = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Enter Score';
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
                        hintText: "Ex : 70% (OR) 7.0 CGPA",
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
                      "Passing Year",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                    TextFormField(
                      controller: passingYearController,
                      onSaved: (val) {
                        setState(() {
                          Resume.Passing_Year = int.parse(val!);
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Enter Passing Year';
                        } else {
                          return null;
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
                        hintText: "Ex : 2021",
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
