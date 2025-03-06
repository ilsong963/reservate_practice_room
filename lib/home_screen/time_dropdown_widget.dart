import 'package:flutter/material.dart';

class TimeDropdownWidget extends StatefulWidget {
  const TimeDropdownWidget({super.key, required this.onStartTimeChanged, required this.onEndTimeChanged});
  final Function(TimeOfDay) onStartTimeChanged;
  final Function(TimeOfDay) onEndTimeChanged;

  @override
  State<TimeDropdownWidget> createState() => _TimeDropdownWidgetState();
}

class _TimeDropdownWidgetState extends State<TimeDropdownWidget> {
  static final List<DropdownMenuEntry<String>> menuEntries = timeTable.map((entry) {
    String timeString = entry.keys.first;
    return DropdownMenuEntry<String>(value: timeString, label: timeString);
  }).toList();

  @override
  Widget build(BuildContext context) {
    String dropdownValue = timeTable[0].keys.first;
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            DropdownMenu<String>(
              initialSelection: timeTable.first.keys.first,
              onSelected: (String? value) {
                setState(() {
                  dropdownValue = value!;
                  TimeOfDay selectedTime = timeTable.firstWhere((entry) => entry.keys.first == value).values.first;
                  widget.onStartTimeChanged(selectedTime);
                });
              },
              inputDecorationTheme: InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0, color: Colors.transparent),
                ),
              ),
              enableSearch: false,
              dropdownMenuEntries: menuEntries,
            ),
            Spacer(),
            Text(' ~ ', style: TextStyle(fontSize: 25)),
            Spacer(),
            DropdownMenu<String>(
              initialSelection: timeTable.first.keys.first,
              onSelected: (String? value) {
                setState(() {
                  dropdownValue = value!;
                  TimeOfDay selectedTime = timeTable.firstWhere((entry) => entry.keys.first == value).values.first;
                  widget.onEndTimeChanged(selectedTime);
                });
              },
              inputDecorationTheme: InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0, color: Colors.transparent),
                ),
              ),
              enableSearch: false,
              dropdownMenuEntries: menuEntries,
            )
          ],
        ));
  }
}

typedef TimeTableEntry = DropdownMenuEntry<TimeOfDay>;
final List<Map<String, TimeOfDay>> timeTable = [
  {"00:00": TimeOfDay(hour: 0, minute: 0)},
  {"01:00": TimeOfDay(hour: 1, minute: 0)},
  {"02:00": TimeOfDay(hour: 2, minute: 0)},
  {"03:00": TimeOfDay(hour: 3, minute: 0)},
  {"04:00": TimeOfDay(hour: 4, minute: 0)},
  {"05:00": TimeOfDay(hour: 5, minute: 0)},
  {"06:00": TimeOfDay(hour: 6, minute: 0)},
  {"07:00": TimeOfDay(hour: 7, minute: 0)},
  {"08:00": TimeOfDay(hour: 8, minute: 0)},
  {"09:00": TimeOfDay(hour: 9, minute: 0)},
  {"10:00": TimeOfDay(hour: 10, minute: 0)},
  {"11:00": TimeOfDay(hour: 11, minute: 0)},
  {"12:00": TimeOfDay(hour: 12, minute: 0)},
  {"13:00": TimeOfDay(hour: 13, minute: 0)},
  {"14:00": TimeOfDay(hour: 14, minute: 0)},
  {"15:00": TimeOfDay(hour: 15, minute: 0)},
  {"16:00": TimeOfDay(hour: 16, minute: 0)},
  {"17:00": TimeOfDay(hour: 17, minute: 0)},
  {"18:00": TimeOfDay(hour: 18, minute: 0)},
  {"19:00": TimeOfDay(hour: 19, minute: 0)},
  {"20:00": TimeOfDay(hour: 20, minute: 0)},
  {"21:00": TimeOfDay(hour: 21, minute: 0)},
  {"22:00": TimeOfDay(hour: 22, minute: 0)},
  {"23:00": TimeOfDay(hour: 23, minute: 0)},
];
