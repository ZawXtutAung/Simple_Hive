// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyObjectAdapterAdapter extends TypeAdapter<MyAdapter> {
  @override
  final int typeId = 1;

  @override
  MyAdapter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyAdapter(
      name: fields[0] as String,
      age: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, MyAdapter obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyObjectAdapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
