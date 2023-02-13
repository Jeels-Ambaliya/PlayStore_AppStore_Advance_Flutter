import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../globals/globals.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            Globals.selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2050),
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ColorScheme.light(
                        primary: Colors.blue.shade200, // <-- SEE HERE
                        onPrimary: Colors.black87, // <-- SEE HERE
                        onSurface: Colors.blue.shade900, // <-- SEE HERE
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          primary: Colors.blue.shade300, // button text color
                        ),
                      ),
                    ),
                    child: child!,
                  );
                });

            if (Globals.selectedDate != null) {
              setState(() {
                Globals.date = DateFormat.yMMMd().format(Globals.selectedDate!);
              });
            }
          },
          child: const Text("Selected Date"),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            "Date : ${Globals.date}",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade300,
            ),
          ),
        ),
      ],
    );
  }
}
