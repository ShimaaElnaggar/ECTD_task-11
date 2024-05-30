
import 'package:ectd_task/widgets/check_box_tile.dart';
import 'package:ectd_task/widgets/radio_tile.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class CustomGrouPButtons extends StatefulWidget {

 const CustomGrouPButtons({super.key});

  @override
  State<CustomGrouPButtons> createState() => _CustomGrouPButtonsState();
}

class _CustomGrouPButtonsState extends State<CustomGrouPButtons> {
  GroupButtonController checkboxesController = GroupButtonController();
  GroupButtonController radioController = GroupButtonController();
  List<String>  checkboxButtons =
  [
    'Breakfas (10 UsD/Day)',
    'Internet WiFi (5 UsD/Day)',
    'Parking (5 UsD/Day)',
    'Swimming Pool (10 UsD/Day)',
  ];
  List<String> radioButtons =
  [
    'City View',
    'Sea View',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Extras: ",
          style:  TextStyle(
            color: Colors.deepOrange,
            fontSize: 18,
          ),
        ),
        GroupButton(
          controller: checkboxesController,
          isRadio: false,
          options: const GroupButtonOptions(
            groupingType: GroupingType.column,
          ),
          buttons:checkboxButtons,
          buttonIndexedBuilder: (selected, index, context) {
            return CheckBoxTile(
              title: checkboxButtons[index],
              selected: selected,
              onTap: () {
                if (!selected) {
                 checkboxesController.selectIndex(index);
                  return;
                }
                checkboxesController.unselectIndex(index);
              },
            );
          },
          onSelected: (val, i, selected) =>print('Button: $val index: $i $selected'),
        ),
        const Text(
          "View: ",
          style:  TextStyle(
            color: Colors.deepOrange,
            fontSize: 18,
          ),
        ),
        GroupButton(
          controller: radioController,
          isRadio: true,
          options: const GroupButtonOptions(
            groupingType: GroupingType.column,
          ),
          buttons:radioButtons,
          buttonIndexedBuilder: (selected, index, context) {
            return RadioTile(
              index: index,
              title: radioButtons[index],
              selected: radioController.selectedIndex,
              onTap: () {
                if (!selected) {
                  radioController.selectIndex(index);
                  return;
                }
                radioController.unselectIndex(index);
              },
            );
          },
          onSelected: (val, i, selected) =>print('Button: $val index: $i $selected'),
        ),
      ],
    );
  }
}



