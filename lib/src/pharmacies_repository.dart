import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pharmacies_repository/src/models/pharmacy.dart';

class PharmaciesRepository{
  
  Future<List<Pharmacy>> getPahrmacies(String county) async{
    Dio dio = Dio();
    final response = await dio.get('https://raw.githubusercontent.com/kiang/pharmacies/master/json/points.json');
    if(response.statusCode == 200){
      final json = jsonDecode(response.data.toString());
      List<Pharmacy> data = json['features'].map<Pharmacy>((e) => Pharmacy.fromJson(e['properties'])).toList();
      return data.where((element) => element.county == county).toList();
    }else{
     throw Exception("藥局資料取得失敗 ${response.statusCode}");
    }
  }
}