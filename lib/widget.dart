// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'boxes.dart';

class TimeTextField extends StatelessWidget {
  final String entry;
  final ValueChanged<String> onChangedEntry;

  const TimeTextField({
    Key? key,
    required this.entry,
    required this.onChangedEntry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Boxes.getDataRows().listenable(),
      builder: (context, box, _) {
        return TextFormField(
          initialValue: entry,
          onChanged: onChangedEntry,
          maxLines: 1,
          style: TextStyle(fontSize: 20, color: Colors.black),
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          validator: (entry) => entry != null && entry.isEmpty
              ? 'The time cannot be empty'
              : null,
        );
      },
    );
  }
}

Widget verticalDivider = const VerticalDivider(
  thickness: 1,
);
