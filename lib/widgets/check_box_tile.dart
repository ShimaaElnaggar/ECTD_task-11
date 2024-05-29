
import 'package:flutter/material.dart';

class CheckBoxTile extends StatelessWidget {
   String title;
   bool selected;
   VoidCallback onTap;

   CheckBoxTile({
    super.key,
    required this.selected,
    required this.onTap,
    required this.title,
  });



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
      leading: Checkbox(
        value: selected,
        onChanged: (val) {
          onTap();
        },
      ),
    );
  }
}