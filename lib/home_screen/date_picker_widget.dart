import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateChanged;
  final DateTime? startDate;
  final DateTime? endDate;

  const DatePickerWidget({
    super.key,
    required this.selectedDate,
    required this.onDateChanged,
    this.startDate,
    this.endDate,
  });

  void _changeDate(int days) {
    onDateChanged(selectedDate.add(Duration(days: days)));
  }

  Future<void> _pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: startDate ?? DateTime(DateTime.now().year - 1),
        lastDate: endDate ?? DateTime(DateTime.now().year + 1));

    if (pickedDate != null) {
      onDateChanged(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () => _changeDate(-1),
        ),
        TextButton(
          onPressed: () => _pickDate(context),
          child: Text(
            DateFormat('yyyy-MM-dd').format(selectedDate),
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        IconButton(
          icon: Icon(Icons.chevron_right),
          onPressed: () => _changeDate(1),
        )
      ],
    );
  }
}
