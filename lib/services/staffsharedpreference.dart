import 'package:shared_preferences/shared_preferences.dart';

String? empid;
String? id;
String? dob;
String? name;
String? department;

class StaffPrefService {
  Future createCache(String empid) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString("empid", empid);
  }

  Future readCache() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    // print(_preferences.getString("kbtid"));
    empid = _preferences.getString("empid");
    print(empid);
    print("this is cache: -");
    return empid;
  }

  Future removeCache(String empid) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.remove("empid");
  }
}

class StaffUserCardService {
  Future createCache(
      String id, String name, String dob, String department) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();

    _preferences.setString("id", id);
    _preferences.setString("name", name);
    _preferences.setString("dob", dob);
    _preferences.setString("department", department);
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
    department = _preferences.getString("department");
    print("this is cache: -");
    return id;
  }

  Future removeCache(
    String id,
    String name,
    String dob,
    String department,
  ) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.remove("id");
    _preferences.remove("name");
    _preferences.remove("dob");
    _preferences.remove("department");
  }
}
