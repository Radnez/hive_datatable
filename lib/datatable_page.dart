// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_datatable/widget.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_datatable/model.dart';
import 'boxes.dart';

class HiveDataTable extends StatefulWidget {
  const HiveDataTable({Key? key}) : super(key: key);

  @override
  _HiveDataTableState createState() => _HiveDataTableState();
}

class _HiveDataTableState extends State<HiveDataTable> {
  static final box = Boxes.getDataRows();

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            TextButton(
                onPressed: () async {
                  final dataRowModels =
                      box.values.toList().cast<DataRowModel>();
                  setState(() {
                    dataRowModels.removeLast();
                    deleteDataRow(dataRowModels.last);
                  });
                  print('Number of rows ${dataRowModels.length}');
                  print('Minus was tapped');
                },
                child: Text(
                  'MINUS',
                  style: TextStyle(color: Colors.black, fontSize: 28),
                )),
            Spacer(),
            Text('Hive DataTable'),
            Spacer(),
            TextButton(
                onPressed: () async {
                  final dataRowModels =
                      box.values.toList().cast<DataRowModel>();
                  setState(() {
                    // dataRowModels.add(dataRowModel);
                    addDataRow;
                  });

                  print('Number of rows ${dataRowModels.length}');
                  print('Add was tapped');
                },
                child: Text(
                  'ADD',
                  style: TextStyle(color: Colors.black, fontSize: 28),
                )),
          ],
        ),
      ),
      body: ValueListenableBuilder<Box<DataRowModel>>(
          valueListenable: Boxes.getDataRows().listenable(),
          builder: (context, box, _) {
            final dataRowModels = box.values.toList().cast<DataRowModel>();
            if (dataRowModels.isEmpty) {
              return Center(
                child: Text('Add new rows'),
              );
            } else {
              return InteractiveViewer(
                  constrained: false,
                  child: Theme(
                    data:
                        Theme.of(context).copyWith(dividerColor: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: DataTable(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        columns: [
                          DataColumn(label: Text('Times')),
                          DataColumn(label: verticalDivider),
                          DataColumn(label: Text('Monday')),
                          DataColumn(label: verticalDivider),
                          DataColumn(label: Text('Tuesday')),
                          DataColumn(label: verticalDivider),
                          DataColumn(label: Text('Wednesday')),
                          DataColumn(label: verticalDivider),
                          DataColumn(label: Text('Thursday')),
                          DataColumn(label: verticalDivider),
                          DataColumn(label: Text('Friday')),
                          DataColumn(label: verticalDivider),
                          DataColumn(label: Text('Saturday')),
                          DataColumn(label: verticalDivider),
                          DataColumn(label: Text('Sunday')),
                        ],
                        rows: List.generate(dataRowModels.length,
                            (index) => buildRow(dataRowModels[index], index)),
                      ),
                    ),
                  ));
            }
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save_outlined),
        onPressed: () async {
          final dataRowModels = box.values.toList().cast<DataRowModel>();
          print('${dataRowModels.length}');
          print('Number of boxes ${box.length}');
        },
      ),
    );
  }

  //Datarow(index 1);
  //vs save datacells individually?

  //Classes Constructors down below.. dataRowModels can only be a string
  //because it is of class DataRowModel which you created and it returns string
  DataCell buildDataCell(DataRowModel dataRowModels, int index) {
    return DataCell(TimeTextField(
      entry: '${box.getAt(index)}',
      onChangedEntry: (value) async {
        setState(() {
          dataRowModels.value = value;
          editDataCell(dataRowModels, value);
        });
        print('${dataRowModels.value}');
      },
    ));
  }

  // List<DataRow> getRows(List<DataRowModel> dataRowModel) {
  //   final cells = [dataRowModels]
  // }

  DataRow buildRow(DataRowModel dataRowModel, int index) {
    return DataRow(cells: [
      DataCell(TimeTextField(
        entry: dataRowModel.value,
        onChangedEntry: (val) async {
          setState(() {
            dataRowModel.value = val;
            dataRowModel.save();

            editDataCell(dataRowModel, val);
          });
          print('${dataRowModel.value}');
        },
      )),
      DataCell(verticalDivider),
      DataCell(TimeTextField(
        entry: dataRowModel.value,
        onChangedEntry: (value) async {
          setState(() {
            dataRowModel.value = value;
            editDataCell(dataRowModel, value);
          });
          print('${dataRowModel.value}');
        },
      )),
      DataCell(verticalDivider),
      DataCell(TimeTextField(
        entry: dataRowModel.value,
        onChangedEntry: (value) async {
          setState(() {
            dataRowModel.value = value;
            editDataCell(dataRowModel, value);
          });
          print('${dataRowModel.value}');
        },
      )),
      DataCell(verticalDivider),
      DataCell(TimeTextField(
        entry: dataRowModel.value,
        onChangedEntry: (value) async {
          setState(() {
            dataRowModel.value = value;
            editDataCell(dataRowModel, value);
          });
          print('${dataRowModel.value}');
        },
      )),
      DataCell(verticalDivider),
      DataCell(TimeTextField(
        entry: dataRowModel.value,
        onChangedEntry: (value) async {
          setState(() {
            dataRowModel.value = value;
            editDataCell(dataRowModel, value);
          });
          print('${dataRowModel.value}');
        },
      )),
      DataCell(verticalDivider),
      DataCell(TimeTextField(
        entry: dataRowModel.value,
        onChangedEntry: (value) async {
          setState(() {
            dataRowModel.value = value;
            editDataCell(dataRowModel, value);
          });
          print('${dataRowModel.value}');
        },
      )),
      DataCell(verticalDivider),
      DataCell(TimeTextField(
        entry: dataRowModel.value,
        onChangedEntry: (value) async {
          setState(() {
            dataRowModel.value = value;
            editDataCell(dataRowModel, value);
          });
          print('${dataRowModel.value}');
        },
      )),
      DataCell(verticalDivider),
      DataCell(TimeTextField(
        entry: dataRowModel.value,
        onChangedEntry: (value) async {
          setState(() {
            dataRowModel.value = value;
            editDataCell(dataRowModel, value);
          });
          print('${dataRowModel.value}');
        },
      )),
    ]);
  }

  void editDataCell(DataRowModel dataRowModel, String value) {
    dataRowModel.value = value;
    //value
    dataRowModel.save();
    print(dataRowModel.value);
  }

  Future addDataRow(String value) async {
    final box = Boxes.getDataRows();
    //next last value gets printed
    final dataRowModel = DataRowModel(value)
      ..value = value; //value //empty string
    box.add(dataRowModel);
  }

  void deleteDataRow(DataRowModel dataRowModel) {
    dataRowModel.delete();
    print('Number of boxes ${box.length}');
  }
}
