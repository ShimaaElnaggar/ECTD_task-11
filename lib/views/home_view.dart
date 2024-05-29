
import 'package:ectd_task/widgets/custom_app_bar.dart';
import 'package:ectd_task/widgets/custom_date_row.dart';
import 'package:ectd_task/widgets/custom_group_button.dart';
import 'package:ectd_task/widgets/custom_slider_row.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(title: "ATC Hotel"),
      body: ListView(
        children: [
          Image.asset("assets/images/hotel.jpg",),
          CustomDateRow(title: "Check-in date : "),
          CustomDateRow(title: "Check-Out date : "),
          CustomSliderRow(title: "Adults : "),
          CustomSliderRow(title: "Children : "),
          CustomGrouPButtons(),
        ],
      ),
    );
  }
}
