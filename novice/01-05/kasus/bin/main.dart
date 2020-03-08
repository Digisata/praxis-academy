import 'phone_repository.dart';

Future<void> main() async {
  var phones = await PhoneRepository().fetchPhoneList();
  for (int i = 0; i < phones.results.length; i++) {
    print('''
      Name: ${phones.results[i].nama};
      Price: ${phones.results[i].harga};
      Desciption: ${phones.results[i].deskripsi};
      Image: ${phones.results[i].image};
      Rating: ${phones.results[i].star};
    ''');
    print('');
  }

}