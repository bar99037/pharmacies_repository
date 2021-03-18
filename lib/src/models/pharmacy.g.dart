// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PharmacyAdapter extends TypeAdapter<Pharmacy> {
  @override
  final int typeId = 0;

  @override
  Pharmacy read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pharmacy(
      id: fields[0] as String,
      name: fields[1] as String,
      phone: fields[2] as String,
      address: fields[3] as String,
      maskAdult: fields[4] as int,
      maskChild: fields[5] as int,
      updated: fields[6] as DateTime,
      county: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Pharmacy obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.address)
      ..writeByte(4)
      ..write(obj.maskAdult)
      ..writeByte(5)
      ..write(obj.maskChild)
      ..writeByte(6)
      ..write(obj.updated)
      ..writeByte(7)
      ..write(obj.county);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PharmacyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
