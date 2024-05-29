
import 'package:flutter/material.dart';

class CustomDateRow extends StatelessWidget {
  String title;
  CustomDateRow({required this.title,super.key});
  DateTime ? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: title,
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 18,
                ),
                ),
                const TextSpan(
                  text: " Selected Date",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
        ),
        IconButton(
            onPressed: (){
              picDate(context);
            },
            icon: const Icon(Icons.date_range_outlined),
        ),
       
      ],
    );
  }

  void picDate(BuildContext context) {
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2025),
    );
  }
}
