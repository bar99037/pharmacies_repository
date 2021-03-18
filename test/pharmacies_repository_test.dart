import 'package:flutter_test/flutter_test.dart';
import 'package:pharmacies_repository/src/models/pharmacies.dart';
import 'package:pharmacies_repository/src/pharmacies_repository.dart';

void main() {
  group('test getPharmacies', (){
    test('test get 臺中市 pharmacies', () async{
      PharmaciesRepository pharmaciesRepository = PharmaciesRepository();
      List<Pharmacies> result = await pharmaciesRepository.getPahrmacies('臺中市');
      print('length:${result.length}');
      expect('臺中市', result.first.county);
    });
  });
}
