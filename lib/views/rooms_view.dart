
import 'package:ectd_task/models/item.dart';
import 'package:ectd_task/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RoomsView extends StatefulWidget {
  const RoomsView({super.key});

  @override
  State<RoomsView> createState() => _RoomsViewState();
}

class _RoomsViewState extends State<RoomsView> {
  List<Item> items = [
    Item(
        header: Image.asset("assets/images/king room.jpg",height: 100,width: 200,),
        body: "A room with a king-sized bed.",
        selection: 'King Room'
    ),
    Item(
        header: Image.asset("assets/images/double room.jpg",height: 100,width: 200,),
        body: "A room assigned to two people.",
        selection: 'Double Room'
    ),
    Item(
        header: Image.asset("assets/images/family room.jpg", height: 100,width: 200,),
        body: "A room assigned to three or four people.",
        selection: 'Family Room',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Rooms List"),
      body: ListView(
        children: [
           Padding(
            padding:  const EdgeInsets.all(10.0),
             child:  ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  items[index].isExpanded = !items[index].isExpanded;
                });
              },
              children: items.map((Item item) {
                return  ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return  ListTile(
                        leading: item.header,
                        title:  Text(
                          item.selection,
                          textAlign: TextAlign.left,
                          style:  const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.orangeAccent,
                          ),
                        ));
                  },
                  isExpanded: item.isExpanded,
                  body: Text(
                    item.body,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        ],
    ),
    );
  }
}
