import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

@HiveType(typeId: 0)
class Pharmacy extends HiveObject{
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String phone;
  @HiveField(3)
  String address;
  @HiveField(4)
  int maskAdult;
  @HiveField(5)
  int maskChild;
  @HiveField(6)
  DateTime updated;
  @HiveField(7)
  String county;

  Pharmacy({@required this.id, this.name, this.phone, this.address, this.maskAdult, this.maskChild, this.updated, this.county});

  Pharmacy.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        phone = json['phone'],
        address = json['address'],
        maskAdult = json['mask_adult'],
        maskChild = json['mask_child'],
        updated = DateFormat("yyyy/MM/dd HH:mm:ss").parse(json['updated'].toString()),
        county = json['county'];

  Map<String, dynamic> toJson() =>
      {
        'id' : id,
        'name': name,
        'phone': phone,
        'address': address,
        'mask_adult': maskAdult,
        'mask_child': maskChild,
        'update': DateFormat("yyyy/MM/dd HH:mm:ss").format(updated),
        'county' : county
      };
}