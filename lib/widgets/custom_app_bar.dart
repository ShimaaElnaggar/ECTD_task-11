
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget{
  String title;
 CustomAppBar({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 4,
      shadowColor: Colors.grey[100],
      backgroundColor: Colors.orange,
      title:Text(
       title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}