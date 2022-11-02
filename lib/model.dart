// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'model.g.dart';

@HiveType(typeId: 0)
class DataRowModel extends HiveObject {
  @HiveField(0)
  late String value;
  DataRowModel(this.value);
}

@HiveType(typeId: 1)
class DataRowRow extends HiveObject {
  @HiveField(0)
  late DataRow dataRowPosition;
}

@HiveType(typeId: 2)
class TextFieldModel extends HiveObject {
  @HiveField(0)
  late TextFormField fieldValue;
}
