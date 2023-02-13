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
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: const Text(
          "Stepper App",
          style: TextStyle(
            fontSize: 24,
            letterSpacing: 4,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stepper(
            onStepTapped: (int index) {
              // setState(() {
              //   Globals.stepIndex = index;
              // });
            },
            currentStep: Globals.stepIndex,
            controlsBuilder: (context, conrol) {
              return Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      (Globals.stepIndex <= 2)
                          ? (Globals.formKey[Globals.stepIndex].currentState!
                                  .validate())
                              ? (Globals.stepIndex < 2)
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
                    },
                    child: const Text("Next"),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {
                      (Globals.stepIndex > 0)
                          ? setState(() => Globals.stepIndex--)
                          : ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.red,
                                behavior: SnackBarBehavior.floating,
                                content: Text("Enter Value"),
                              ),
                            );
                    },
                    child: const Text("Back"),
                  ),
                ],
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
                      const SizedBox(
                        height: 10,
                      ),
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
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Enter GRID",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                state: StepState.complete,
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
            ],
          ),
          // DatePicker(),

          // MonthPicker(),
        ],
      ),
      // drawer: const MyDrawer(),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blue.shade300,
      //   onPressed: () {
      //     showDialog(
      //       context: context,
      //       builder: (e) => const alertDialog(),
      //     );
      //   },
      //   child: const Icon(
      //     Icons.add,
      //     size: 30,
      //     color: Colors.black,
      //   ),
      // ),
    );
  }
}
