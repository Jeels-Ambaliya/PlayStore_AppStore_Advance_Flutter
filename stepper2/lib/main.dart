import 'package:flutter/material.dart';

import 'globals/globals.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const StepperApp(),
    ),
  );
}

class StepperApp extends StatefulWidget {
  const StepperApp({Key? key}) : super(key: key);

  @override
  State<StepperApp> createState() => _StepperAppState();
}

class _StepperAppState extends State<StepperApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: const Text(
          "Edit Your Profile",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: 800,
          child: Stepper(
            onStepTapped: (int index) {
              setState(() {
                (Globals.stepIndex <= 7)
                    ? (Globals.formKey[Globals.stepIndex].currentState!
                            .validate())
                        ? (Globals.stepIndex < 7)
                            ? setState(() => Globals.stepIndex++)
                            : ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.green,
                                  behavior: SnackBarBehavior.floating,
                                  content: Text("All Detail Saved."),
                                ),
                              )
                        : ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              behavior: SnackBarBehavior.floating,
                              content: Text("Enter Value"),
                            ),
                          )
                    : ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.green,
                          behavior: SnackBarBehavior.floating,
                          content: Text("You've reached the Last step."),
                        ),
                      );
                // Globals.stepIndex = index;
              });
            },
            currentStep: Globals.stepIndex,
            controlsBuilder: (context, control) {
              return const SizedBox(
                width: 2,
              );
            },
            steps: [
              Step(
                state: Globals.stepIndex <= 0
                    ? StepState.editing
                    : StepState.complete,
                isActive: Globals.stepIndex >= 0,
                title: const Text("Step 1"),
                content: Form(
                  key: Globals.formKey[0],
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Value";
                          } else {
                            null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Enter First Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                state: Globals.stepIndex <= 1
                    ? StepState.editing
                    : StepState.complete,
                isActive: Globals.stepIndex >= 1,
                title: const Text("Step 2"),
                content: Form(
                  key: Globals.formKey[1],
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Value";
                          } else {
                            null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Enter Last Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                state: Globals.stepIndex <= 2
                    ? StepState.editing
                    : StepState.complete,
                isActive: Globals.stepIndex >= 2,
                title: const Text("Step 3"),
                content: Form(
                  key: Globals.formKey[2],
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Value";
                          } else {
                            null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Enter Faculty Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                state: Globals.stepIndex <= 3
                    ? StepState.editing
                    : StepState.complete,
                isActive: Globals.stepIndex >= 3,
                title: const Text("Step 4"),
                content: Form(
                  key: Globals.formKey[3],
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Value";
                          } else {
                            null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Enter Your Course",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                state: Globals.stepIndex <= 4
                    ? StepState.editing
                    : StepState.complete,
                isActive: Globals.stepIndex >= 4,
                title: const Text("Step 5"),
                content: Form(
                  key: Globals.formKey[4],
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Value";
                          } else {
                            null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "Enter Contact Number",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                state: Globals.stepIndex <= 5
                    ? StepState.editing
                    : StepState.complete,
                isActive: Globals.stepIndex >= 5,
                title: const Text("Step 6"),
                content: Form(
                  key: Globals.formKey[5],
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Value";
                          } else {
                            null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "Enter Mother Number",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                state: Globals.stepIndex <= 6
                    ? StepState.editing
                    : StepState.complete,
                isActive: Globals.stepIndex >= 6,
                title: const Text("Step 7"),
                content: Form(
                  key: Globals.formKey[6],
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Value";
                          } else {
                            null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "Enter Father Number",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                state: Globals.stepIndex <= 7
                    ? StepState.editing
                    : StepState.complete,
                isActive: Globals.stepIndex >= 7,
                title: const Text("Step 8"),
                content: Form(
                  key: Globals.formKey[7],
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Value";
                          } else {
                            null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Enter Hobbies",
                          border: OutlineInputBorder(),
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
}
