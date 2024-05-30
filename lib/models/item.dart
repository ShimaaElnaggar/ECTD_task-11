import 'package:flutter/material.dart';

class Item {
  bool isExpanded ;
   Widget header;
   String body;
   String selection;

  Item({
    this.isExpanded = false,
    required this.header,
    required this.body,
    required this.selection
  });

}