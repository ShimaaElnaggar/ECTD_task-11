
import 'package:ectd_task/views/rooms_view.dart';
import 'package:ectd_task/widgets/custom_app_bar.dart';
import 'package:ectd_task/widgets/custom_elevated_button.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Row(
                    children: [
                      Expanded(child: Image.asset("assets/images/hotel.jpg",fit: BoxFit.fill,height: 150,)),
                    ],
                  ),
                  CustomDateRow(title: "Check-in date : "),
                  CustomDateRow(title: "Check-Out date : "),
                  CustomSliderRow(title: "Adults : "),
                  CustomSliderRow(title: "Children : "),
                  const CustomGrouPButtons(),

                ],
              ),
            ),
            CustomElevatedButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> RoomsView()));
            }, title: "Check Rooms and Rates"),
          ],
        ),
      ),
    );
  }
}
