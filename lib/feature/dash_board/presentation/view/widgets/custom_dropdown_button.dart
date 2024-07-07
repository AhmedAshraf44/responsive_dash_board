import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({super.key});

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  static const List<DropdownMenuItem<String>> items = [
    DropdownMenuItem(
        value: 'Monthly',
        child: Text(
          'Monthly',
        )),
    DropdownMenuItem(
        value: 'Weekly',
        child: Text(
          'Weekly',
        )),
    DropdownMenuItem(
        value: 'annually',
        child: Text(
          'annually',
        )),
  ];
  String dropdownValue = 'Monthly';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const ShapeDecoration(
        color: kWhiteColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: kAlternateBackgroundColor),
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
      ),
      child: DropdownButton(
        style: AppStyle.styleMedium16(context),
        underline: const SizedBox(),
        items: items,
        value: dropdownValue,
        icon: Transform.rotate(
            angle: -1.5708,
            child: const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Icon(Icons.arrow_back_ios),
            )),
        onChanged: (String? value) {
          if (value is String) {
            setState(() {
              dropdownValue = value;
            });
          }
        },
      ),
    );
  }
}
