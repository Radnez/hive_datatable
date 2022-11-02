// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DataRowModelAdapter extends TypeAdapter<DataRowModel> {
  @override
  final int typeId = 0;

  @override
  DataRowModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataRowModel(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DataRowModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataRowModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DataRowRowAdapter extends TypeAdapter<DataRowRow> {
  @override
  final int typeId = 1;

  @override
  DataRowRow read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataRowRow()..dataRowPosition = fields[0] as DataRow;
  }

  @override
  void write(BinaryWriter writer, DataRowRow obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.dataRowPosition);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataRowRowAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
