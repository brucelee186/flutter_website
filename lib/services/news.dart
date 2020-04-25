import 'package:http/http.dart' as http;
import 'dart:convert';
import '../conf/config.dart';

// get news list
getNewsResult() async {
  String url = Config.DOMAIN + '/manage/maNews/getList';
  var res = await http.get(url);
  String body = res.body;
  var json = jsonDecode(body);
  print(json);
  return json;
}