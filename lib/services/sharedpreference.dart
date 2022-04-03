import 'package:shared_preferences/shared_preferences.dart';

String? kbtug;
String? id;
String? dob;
String? name;
String? academic_year;

class PrefService {
  Future createCache(String kbtid) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString("kbtid", kbtid);
  }

  Future readCache() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    // print(_preferences.getString("kbtid"));
    kbtug = _preferences.getString("kbtid");
    print(kbtug);
    print("this is cache: -");
    return kbtug;
  }

  Future removeCache(String kbtid) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.remove("kbtid");
  }
}

class UserCardService {
  Future createCache(
      String id, String name, String dob, String academicYear) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();

    _preferences.setString("id", id);
    _preferences.setString("name", name);
    _preferences.setString("dob", dob);
    _preferences.setString("academic_year", academicYear);
    print("set alll usercard service ");
    print(id);
    print(dob);
    print(name);
    print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
  }

  Future readCache() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    id = _preferences.getString("id");
    name = _preferences.getString("name");
    dob = _preferences.getString("dob");
    academic_year = _preferences.getString("academic_year");
    print("this is cache: -");
    return id;
  }

  Future removeCache(
    String id,
    String name,
    String dob,
    String academic_year,
  ) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.remove("id");
    _preferences.remove("name");
    _preferences.remove("dob");
    _preferences.remove("academic_year");
  }
}
