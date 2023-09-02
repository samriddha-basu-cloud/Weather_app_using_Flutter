import 'package:flutter/material.dart';
import 'package:weather_app/client.dart';

import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherApp(),
    );
  }
}
class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  WeatherModel? weather;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x212121),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async {
              print("test");
              weather =  await WeatherAppClient().request();
              print(weather?.currentWeather);
            }, child: Text("Get Data"),),
          ],
        ),
      ),
    );
  }
}
