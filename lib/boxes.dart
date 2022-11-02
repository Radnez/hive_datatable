import 'package:hive/hive.dart';
import 'model.dart';

class Boxes {
  static Box<DataRowModel> getDataRows() =>
      Hive.box<DataRowModel>('datarowmodels');
}
