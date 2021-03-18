import 'package:flutter_test/flutter_test.dart';
import 'package:pharmacies_repository/src/models/pharmacy.dart';
import 'package:pharmacies_repository/src/pharmacies_repository.dart';

void main() {
  group('test getPharmacies', (){
    test('test get 臺中市 pharmacies', () async{
      PharmaciesRepository pharmaciesRepository = PharmaciesRepository();
      List<Pharmacy> result = await pharmaciesRepository.getPahrmacies('臺中市');
      print('length:${result.length}');
      for(Pharmacy item in result){
        expect('臺中市', item.county);
      }
    });
  });
}
