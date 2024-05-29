
import 'package:flutter/material.dart';

class CustomDateRow extends StatefulWidget {
  String title;
  CustomDateRow({required this.title,super.key});

  @override
  State<CustomDateRow> createState() => _CustomDateRowState();
}

class _CustomDateRowState extends State<CustomDateRow> {
  DateTime ? selectedDate;
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: widget.title,
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 18,
                ),
                ),
                 TextSpan(
                  text:  selectedDate == null ?
                  " Select Date" : "${selectedDate!.year} - ${selectedDate!.month} - ${selectedDate!.day}" ,
                  style:  TextStyle(
                    color: selectedDate == null ? Colors.grey : Colors.blue,
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
            icon:  Icon(
              Icons.date_range_outlined ,
              color: selectedDate == null ? Colors.grey : Colors.deepOrange,
            ),
        ),
        // validation of date Picker
        // Container(
        //   width: 150,
        //   child: TextFormField(
        //     controller: dateController,
        //     readOnly: true,
        //     onTap: () => picDate(context),
        //     decoration: InputDecoration(
        //       labelText:  selectedDate == null ?
        //       " Select Date" :
        //       "${selectedDate!.year} - ${selectedDate!.month} - ${selectedDate!.day}",
        //     ),
        //     autovalidateMode: AutovalidateMode.always,
        //     validator: (value) {
        //       if (selectedDate == null) {
        //         return 'Please select a date';
        //       } else if (selectedDate!.isBefore(DateTime.now())) {
        //         return 'Selected date cannot be in the past';
        //       }
        //       return null; // Validation passed
        //     },
        //   ),
        // ),

      ],
    );
  }

  void picDate(BuildContext context) async{
     var result = await showDatePicker(
        context: context,
        initialDate: selectedDate ?? DateTime.now(),
        firstDate: DateTime(2024),
        lastDate: DateTime(2026),);
       if(result != null){
         if(result.isBefore(DateTime.now())){
           ScaffoldMessenger.of(context).showSnackBar(
             const SnackBar(content: Text('Selected date cannot be in the past',)),
           );
         }else{
           selectedDate = result;
           setState(() {

           });
         }

     }

  }
}
