import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  var url = 'https://viacep.com.br/ws/55036180/json/';

  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    print(responseData['cep']);
  }
}