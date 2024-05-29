import 'package:flutter/material.dart';

class CustomSliderRow extends StatefulWidget {
  String title;
  CustomSliderRow({required this.title, super.key});

  @override
  State<CustomSliderRow> createState() => _CustomSliderRowState();
}

class _CustomSliderRowState extends State<CustomSliderRow> {
  String? text;
  double value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: Colors.deepOrange,
            fontSize: 18,
          ),
        ),
        Text(
          value.toString(),
          style: const TextStyle(
            color: Colors.deepOrange,
            fontSize: 18,
          ),
        ),
        Slider(
          activeColor: Colors.blue,
          inactiveColor: Colors.grey,
          thumbColor: Colors.blue,
          min: 0,
          max: 6,
          divisions: 6,
          value: value,
          onChanged: (value) {
            this.value = value;
            setState(() {});
          },
        ),
      ],
    );
  }
}
