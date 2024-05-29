
import 'package:flutter/material.dart';

class RadioTile extends StatelessWidget {
  String title;
  int index;
  int? selected;
  VoidCallback onTap;

  RadioTile({
    super.key,
    required this.selected,
    required this.onTap,
    required this.index,
    required this.title,
  });



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
      leading: Radio<int>(
        groupValue: selected,
        value: index,
        onChanged: (val) {
          onTap();
        },
      ),
    );
  }
}