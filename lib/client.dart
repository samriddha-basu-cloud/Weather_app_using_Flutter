import 'dart:convert';

import 'package:dio/dio.dart';

import 'model.dart';

class WeatherAppClient
{
  Future<WeatherModel> request() async
  {
    String url = "https://api.open-meteo.com/v1/forecast?latitude=22.5626&longitude=88.363&hourly=temperature_2m,weathercode,windspeed_10m,winddirection_10m,is_day";
    Response response = await Dio().get(url);
    final parsedData = jsonDecode(response.toString());
    final weather =WeatherModel.fromJson(parsedData);
    return weather;

  }
}