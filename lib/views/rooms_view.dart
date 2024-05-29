
import 'package:ectd_task/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RoomsView extends StatelessWidget {
  const RoomsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Rooms List"),
    );
  }
}
