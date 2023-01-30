import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as PW;
import 'dart:typed_data';
import 'package:printing/printing.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import '../models/global.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  TextEditingController declarationController =
      TextEditingController(text: Resume.Declaration);
  TextEditingController dateController = TextEditingController(
      text: (Resume.Declaration_Date != null)
          ? (Resume.Declaration_Date).toString()
          : null);
  TextEditingController placeController =
      TextEditingController(text: Resume.Declaration_Place);
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double high = 90;
  bool ss = false;
  PW.Document pdf = PW.Document();

  //PDF
  @override
  void initState() {
    super.initState();
    pdf.addPage(
      PW.Page(
        build: (context) => PW.Container(
          decoration: PW.BoxDecoration(
            border: PW.Border.all(width: 2, color: PdfColors.black),
          ),
          child: PW.Row(
            children: [
              PW.Expanded(
                flex: 2,
                child: PW.Container(
                  color: PdfColors.blueGrey800,
                  child: PW.Padding(
                    padding: const PW.EdgeInsets.all(10),
                    child: PW.Column(
                      children: [
                        //Photo
                        PW.Expanded(
                          flex: 2,
                          child: PW.Padding(
                            padding: const PW.EdgeInsets.all(10),
                            child: PW.Container(
                              height: 50,
                              width: 200,
                              decoration: PW.BoxDecoration(
                                image: PW.DecorationImage(
                                  image: PW.MemoryImage(
                                    File(Resume.Image!.path).readAsBytesSync(),
                                  ),
                                ),
                                color: PdfColors.blueGrey800,
                                borderRadius: PW.BorderRadius.circular(50),
                                border: PW.Border.all(
                                  width: 2,
                                  color: PdfColors.teal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        //Contact
                        PW.Expanded(
                          flex: 2,
                          child: PW.Column(
                            crossAxisAlignment: PW.CrossAxisAlignment.start,
                            children: [
                              PW.Text(
                                "Contact : ",
                                style: const PW.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.teal,
                                ),
                              ),
                              PW.SizedBox(
                                height: 10,
                              ),
                              PW.Text(
                                "${Resume.Email}\n\n${Resume.Phone_No}\n\n${Resume.Address1}, ${Resume.Address2},\n${Resume.Address3}",
                                style: const PW.TextStyle(
                                  color: PdfColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Personal Detail
                        PW.Expanded(
                          flex: 2,
                          child: PW.Column(
                            mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: PW.CrossAxisAlignment.start,
                            children: [
                              PW.Text(
                                "Personal Detail : ",
                                style: const PW.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.teal,
                                ),
                              ),
                              PW.Row(
                                children: [
                                  PW.Text(
                                    "DOB : ",
                                    style: const PW.TextStyle(
                                      color: PdfColors.teal100,
                                    ),
                                  ),
                                  PW.Text(
                                    "${Resume.DOB}\n",
                                    style: const PW.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                ],
                              ),
                              PW.Row(
                                children: [
                                  PW.Text(
                                    "Marital Status : ",
                                    style: const PW.TextStyle(
                                      color: PdfColors.teal100,
                                    ),
                                  ),
                                  PW.Text(
                                    "${Resume.Marital_Status}\n",
                                    style: const PW.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                ],
                              ),
                              PW.Row(
                                children: [
                                  PW.Text(
                                    "Nationality : ",
                                    style: const PW.TextStyle(
                                      color: PdfColors.teal100,
                                    ),
                                  ),
                                  PW.Text(
                                    "${Resume.Nationality}",
                                    style: const PW.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                ],
                              ),
                              PW.Row(
                                crossAxisAlignment: PW.CrossAxisAlignment.start,
                                children: [
                                  PW.Text(
                                    "Language : ",
                                    style: const PW.TextStyle(
                                      color: PdfColors.teal100,
                                    ),
                                  ),
                                  PW.Column(
                                    crossAxisAlignment:
                                        PW.CrossAxisAlignment.start,
                                    children: [
                                      (Resume.Hindi == true)
                                          ? PW.Text(
                                              "Hindi",
                                              style: const PW.TextStyle(
                                                color: PdfColors.white,
                                              ),
                                            )
                                          : PW.SizedBox(),
                                      (Resume.Gujarati == true)
                                          ? PW.Text(
                                              "Gujarati",
                                              style: const PW.TextStyle(
                                                color: PdfColors.white,
                                              ),
                                            )
                                          : PW.SizedBox(),
                                      (Resume.English == true)
                                          ? PW.Text(
                                              "English",
                                              style: const PW.TextStyle(
                                                color: PdfColors.white,
                                              ),
                                            )
                                          : PW.SizedBox(),
                                    ],
                                  ),
                                  PW.SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //Education
                        PW.Expanded(
                          flex: 2,
                          child: PW.Column(
                            mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: PW.CrossAxisAlignment.start,
                            children: [
                              PW.Text(
                                "Education : ",
                                style: const PW.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.teal,
                                ),
                              ),
                              PW.Row(
                                children: [
                                  PW.Text(
                                    "Course : ",
                                    style: const PW.TextStyle(
                                      color: PdfColors.teal100,
                                    ),
                                  ),
                                  PW.Text(
                                    "${Resume.Course}\n",
                                    style: const PW.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                ],
                              ),
                              PW.Row(
                                children: [
                                  PW.Text(
                                    "College : ",
                                    style: const PW.TextStyle(
                                      color: PdfColors.teal100,
                                    ),
                                  ),
                                  PW.Text(
                                    "${Resume.College}\n",
                                    style: const PW.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                ],
                              ),
                              PW.Row(
                                children: [
                                  PW.Text(
                                    "Score : ",
                                    style: const PW.TextStyle(
                                      color: PdfColors.teal100,
                                    ),
                                  ),
                                  PW.Text(
                                    "${Resume.Score}",
                                    style: const PW.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                ],
                              ),
                              PW.Row(
                                children: [
                                  PW.Text(
                                    "Passing Year : ",
                                    style: const PW.TextStyle(
                                      color: PdfColors.teal100,
                                    ),
                                  ),
                                  PW.Text(
                                    "${Resume.Passing_Year}",
                                    style: const PW.TextStyle(
                                      color: PdfColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //Skill
                        PW.Expanded(
                          child: PW.Column(
                            mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: PW.CrossAxisAlignment.start,
                            children: [
                              PW.Text(
                                "Technical Skills :     ",
                                style: const PW.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.teal,
                                ),
                              ),
                              PW.Text(
                                "${Resume.skill}",
                                style: const PW.TextStyle(
                                  color: PdfColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Hobbies
                        PW.Expanded(
                          child: PW.Column(
                            mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: PW.CrossAxisAlignment.start,
                            children: [
                              PW.Text(
                                "Hobbies :               ",
                                style: const PW.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.teal,
                                ),
                              ),
                              PW.Text(
                                "${Resume.Hobbie}",
                                style: const PW.TextStyle(
                                  color: PdfColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              PW.Expanded(
                flex: 3,
                child: PW.Padding(
                  padding: const PW.EdgeInsets.all(10),
                  child: PW.Column(
                    children: [
                      //Name
                      PW.Expanded(
                        flex: 3,
                        child: PW.Column(
                          mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                          children: [
                            PW.Text(
                              "${Resume.Name}",
                              style: PW.TextStyle(
                                fontSize: 35,
                                fontWeight: PW.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Carrier Objective
                      PW.Expanded(
                        flex: 3,
                        child: PW.Column(
                          mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: PW.CrossAxisAlignment.start,
                          children: [
                            PW.Text(
                              "Carrier Objective : ",
                              style: const PW.TextStyle(
                                fontSize: 20,
                                decoration: PW.TextDecoration.underline,
                                color: PdfColors.teal,
                              ),
                            ),
                            PW.Column(
                              children: [
                                PW.Text(
                                  "          ${Resume.Career_Objective}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Current Designation : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Current_Designation}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //Achievements
                      PW.Expanded(
                        flex: 2,
                        child: PW.Column(
                          mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: PW.CrossAxisAlignment.start,
                          children: [
                            PW.Text(
                              "Achievements :                        ",
                              style: const PW.TextStyle(
                                fontSize: 20,
                                decoration: PW.TextDecoration.underline,
                                color: PdfColors.teal,
                              ),
                            ),
                            PW.Text(
                              "${Resume.Achievements}\n",
                              style: const PW.TextStyle(
                                color: PdfColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Project
                      PW.Expanded(
                        flex: 3,
                        child: PW.Column(
                          mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: PW.CrossAxisAlignment.start,
                          children: [
                            PW.Text(
                              "Project :",
                              style: const PW.TextStyle(
                                fontSize: 20,
                                decoration: PW.TextDecoration.underline,
                                color: PdfColors.teal,
                              ),
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Project Title : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Project_Title}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Technologies : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                (Resume.C_Program == true)
                                    ? PW.Text(
                                        "C Language",
                                        style: const PW.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      )
                                    : PW.SizedBox(),
                                (Resume.CPP == true)
                                    ? PW.Text(
                                        ", C++",
                                        style: const PW.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      )
                                    : PW.SizedBox(),
                                (Resume.Flutter == true)
                                    ? PW.Text(
                                        ", Flutter",
                                        style: const PW.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      )
                                    : PW.SizedBox(),
                                (Resume.Java == true)
                                    ? PW.Text(
                                        ", Java",
                                        style: const PW.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      )
                                    : PW.SizedBox(),
                                (Resume.Html_Css == true)
                                    ? PW.Text(
                                        ", Html, Css",
                                        style: const PW.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      )
                                    : PW.SizedBox(),
                                (Resume.Bootstrap == true)
                                    ? PW.Text(
                                        ", Bootstrap",
                                        style: const PW.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      )
                                    : PW.SizedBox(),
                                (Resume.Android == true)
                                    ? PW.Text(
                                        ", Android",
                                        style: const PW.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      )
                                    : PW.SizedBox(),
                              ],
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Project Role : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Project_Role}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Project Description : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Project_Description}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //Experience
                      PW.Expanded(
                        flex: 3,
                        child: PW.Column(
                          mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: PW.CrossAxisAlignment.start,
                          children: [
                            PW.Text(
                              "Experience :",
                              style: const PW.TextStyle(
                                fontSize: 20,
                                decoration: PW.TextDecoration.underline,
                                color: PdfColors.teal,
                              ),
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Company Name : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Company_Name}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Position : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Company_Position}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Company Role : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Company_Role}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Employee Status : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Exp}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                            (Resume.CE_Date_Joined == null)
                                ? PW.Row(
                                    children: [
                                      PW.Text(
                                        "Date Join : ",
                                        style: const PW.TextStyle(
                                          color: PdfColors.teal300,
                                        ),
                                      ),
                                      PW.Text(
                                        "${Resume.PE_Date_Joined}\n",
                                        style: const PW.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      ),
                                      PW.Text(
                                        "     Date Exit : ",
                                        style: const PW.TextStyle(
                                          color: PdfColors.teal300,
                                        ),
                                      ),
                                      PW.Text(
                                        "${Resume.PE_Date_Exit}\n",
                                        style: const PW.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      ),
                                    ],
                                  )
                                : PW.Row(
                                    children: [
                                      PW.Text(
                                        "Date Join : ",
                                        style: const PW.TextStyle(
                                          color: PdfColors.teal300,
                                        ),
                                      ),
                                      PW.Text(
                                        "${Resume.CE_Date_Joined}\n",
                                        style: const PW.TextStyle(
                                          color: PdfColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                      //References
                      PW.Expanded(
                        flex: 2,
                        child: PW.Column(
                          mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: PW.CrossAxisAlignment.start,
                          children: [
                            PW.Text(
                              "References :",
                              style: const PW.TextStyle(
                                fontSize: 20,
                                decoration: PW.TextDecoration.underline,
                                color: PdfColors.teal,
                              ),
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Reference Name : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.References_Name}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Designation : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Designation}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Organization : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Organization}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //Declaration
                      PW.Expanded(
                        flex: 2,
                        child: PW.Column(
                          mainAxisAlignment: PW.MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: PW.CrossAxisAlignment.start,
                          children: [
                            PW.Text(
                              "Declaration :",
                              style: const PW.TextStyle(
                                fontSize: 20,
                                decoration: PW.TextDecoration.underline,
                                color: PdfColors.teal,
                              ),
                            ),
                            PW.Text(
                              "          ${Resume.Declaration}\n",
                              style: const PW.TextStyle(
                                color: PdfColors.black,
                              ),
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Date : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Declaration_Date}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                            PW.Row(
                              children: [
                                PW.Text(
                                  "Place : ",
                                  style: const PW.TextStyle(
                                    color: PdfColors.teal300,
                                  ),
                                ),
                                PW.Text(
                                  "${Resume.Declaration_Place}\n",
                                  style: const PW.TextStyle(
                                    color: PdfColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
        actions: [
          IconButton(
            onPressed: () async {
              Uint8List data = await pdf.save();
              await Printing.layoutPdf(onLayout: (format) => data);
            },
            icon: const Icon(
              Icons.picture_as_pdf_outlined,
              color: Colors.red,
            ),
          ),
        ],
        title: const Text(
          "Declaration",
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: (ss == true) ? high + 485 : high,
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
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Declaration",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.teal,
                              ),
                            ),
                            Switch(
                              value: ss,
                              activeColor: Colors.teal,
                              onChanged: (val) {
                                setState(() {
                                  ss = val;
                                });
                              },
                            ),
                          ],
                        ),
                        (ss == true)
                            ? SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            "assets/images/target.png"),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: declarationController,
                                      onSaved: (val) {
                                        setState(() {
                                          Resume.Declaration = val;
                                        });
                                      },
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter Declaration";
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
                                        hintText: "Declaration",
                                        hintStyle: const TextStyle(
                                          fontSize: 22,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 15,
                                        bottom: 15,
                                      ),
                                      child: Divider(
                                        thickness: 2,
                                        color: Colors.teal,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const Text(
                                              "Date\n",
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
                                                controller: dateController,
                                                onSaved: (val) {
                                                  setState(() {
                                                    Resume.Declaration_Date =
                                                        int.parse(val!);
                                                  });
                                                },
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter Date";
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                                keyboardType:
                                                    TextInputType.number,
                                                textInputAction:
                                                    TextInputAction.next,
                                                style: const TextStyle(
                                                  fontSize: 22,
                                                ),
                                                decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Colors.teal,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    borderSide:
                                                        const BorderSide(
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const Text(
                                              "Place(Interview\n venue/city)",
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
                                                controller: placeController,
                                                onSaved: (val) {
                                                  setState(() {
                                                    Resume.Declaration_Place =
                                                        val;
                                                  });
                                                },
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter Place";
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                                keyboardType:
                                                    TextInputType.text,
                                                style: const TextStyle(
                                                  fontSize: 22,
                                                ),
                                                decoration: InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Colors.teal,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Colors.teal,
                                                      width: 2,
                                                    ),
                                                  ),
                                                  hintText: "Ex : Surat",
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
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        if (formKey.currentState!.validate()) {
                                          formKey.currentState!.save();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text("Successfully"),
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              backgroundColor: Colors.green,
                                            ),
                                          );
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text("Failed"),
                                              behavior:
                                                  SnackBarBehavior.floating,
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
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
