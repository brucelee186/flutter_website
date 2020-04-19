import 'package:http/http.dart' as http;
import 'dart:convert';
import '../conf/config.dart';

// get product list
getProductResult([int page = 0]) async {
  String url = 'http://' + Config.IP + ':' + Config.PORT + '/' + Config.DOMAIN
      + '/manage/maPorduct/getList';
  var res = await http.get(url);
  String body = res.body;
  var json = jsonDecode(body);
  print(json);
  return json;
}