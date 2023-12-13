import 'dart:convert';
import 'package:weather_app/models/weather_api.dart';
import 'package:http/http.dart' as http;

class WeatherService{
  get getWeatherData => null;

  Future<Weather> getweatherdata() async{
    final uri = Uri.parse("http://api.weatherapi.com/v1/current.json?key=837abcb5757e4046b46101331232010&q=$city&aqi=no");
    final response = await http.get(uri);
    if(response.statusCode == 200){
      return Weather.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception('Failed');
    }
  }
}
 String city = "New Delhi";