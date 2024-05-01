import 'dart:convert';

import 'package:app1/wigets/model.dart';
import 'package:http/http.dart' as http;

class weatherApiClent {
  Future? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=43ea6baaad7663dc17637e22ee6f78f2&units=matrics");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    weather Weather = weather.fromjson(body .cityname);
    return weather.fromjson(body);
  }
}
