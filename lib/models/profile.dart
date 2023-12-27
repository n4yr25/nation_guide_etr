import 'package:nation_guide_etr/helpers/dbHelper.dart';

class Profile {
  late String name;
  late String address;
  late int phone;
  late String email;

  Profile({
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
  });

  Profile.empty() {
    name = '';
    address = '';
    phone = 0;
    email = '';
  }
  //utility method toMap - convert obj to map
  Map<String, dynamic> toMap() {
    return {
      DbHelper.colName: name,
      DbHelper.colAddress: address,
      DbHelper.colPhone: phone,
      DbHelper.colEmail: email,
    };
  }
}
