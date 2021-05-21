import 'package:http/http.dart' as http;
import 'dart:convert'; //decode json data

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    var url2 = Uri.parse(url);
    http.Response response = await http.get(url2);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
