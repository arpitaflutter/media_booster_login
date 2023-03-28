import 'package:shared_preferences/shared_preferences.dart';

class Shr {
  Future<void> create(String email,String password)
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setString('e1', email);
    shr.setString('p1', password);
  }

  Future<Map> read()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();

    var email = shr.getString('e1');
    var password = shr.getString('p1');

    Map m1 = {"e1":email,"p1":password};
    return m1;
  }
}