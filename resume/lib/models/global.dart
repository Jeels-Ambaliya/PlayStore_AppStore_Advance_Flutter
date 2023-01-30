import 'dart:io';

import 'package:flutter/material.dart';

class Resume {
  static String? Name;
  static String? Email;
  static int? Phone_No;
  static String? Address1;
  static String? Address2;
  static String? Address3;
  static File? Image;

  static String? Career_Objective;
  static String? Current_Designation;

  static int? DOB;
  static String? Marital_Status;
  static bool English = false;
  static bool Hindi = false;
  static bool Gujarati = false;
  static String? Nationality;

  static String? Course;
  static String? College;
  static String? Score;
  static int? Passing_Year;

  static String? Company_Name;
  static String? Company_Position;
  static String? Company_Role;
  static String? Exp = "PreviouslyEmployee";
  static int? PE_Date_Joined;
  static int? PE_Date_Exit;
  static int? CE_Date_Joined;
  static int? Exp_Index = 0;

  static List<String> skill = [];
  static List<TextEditingController> myskillController = [];

  static List<String> Hobbie = [];
  static List<TextEditingController> myHobbieController = [];

  static String? Project_Title;
  static bool C_Program = false;
  static bool CPP = false;
  static bool Flutter = false;
  static bool Java = false;
  static bool Html_Css = false;
  static bool Bootstrap = false;
  static bool Android = false;
  static String? Project_Role;
  static String? Project_Technologies;
  static String? Project_Description;

  static List<String> Achievements = [];
  static List<TextEditingController> myAchievementsController = [];

  static String? References_Name;
  static String? Designation;
  static String? Organization;

  static String? Declaration;
  static int? Declaration_Date;
  static String? Declaration_Place;
}
