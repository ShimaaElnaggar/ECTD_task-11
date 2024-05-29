
import 'package:ectd_task/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(title: "ATC Hotel"),
      body: Column(
        children: [
          Image.asset("assets/images/hotel.jpg",),
        ],
      ),
    );
  }
}
