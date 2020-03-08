import 'phone_list.dart';
import 'package:http/http.dart' as http;

class PhoneRepository {

  Future<PhoneList> fetchPhoneList() async {
    var url = 'http://www.mocky.io/v2/5e6260f730000038004d59f3';
    var respon = await http.get(url);
    var phoneList = PhoneList.fromJson(respon.body);
    return phoneList;
    
  }
  
}