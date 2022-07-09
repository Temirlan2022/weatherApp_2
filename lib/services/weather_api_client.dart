import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tapshyrma_weather/models/weather_models.dart';

class Weatherapiclient {
  Future<Weather> getCurrentWeather(String location) async {
    var endpoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=a14274a1546fbbf85c0d9d6511ccea60&units=metric');

    var resposne = await http.get(endpoint);
    var body = jsonDecode(resposne.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);

  }
}
