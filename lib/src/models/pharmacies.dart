import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Pharmacies {
  String id;
  String name;
  String phone;
  String address;
  int maskAdult;
  int maskChild;
  DateTime updated;
  String county;

  Pharmacies({@required this.id, this.name, this.phone, this.address, this.maskAdult, this.maskChild, this.updated, this.county});

  Pharmacies.fromJson(Map<String, dynamic> json)
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