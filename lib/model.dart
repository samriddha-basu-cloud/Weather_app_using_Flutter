class WeatherModel
{
  WeatherModel({required this.currentWeather, required this.hourly});

  final currentWeather;
  final hourly;

  factory WeatherModel.fromJson(Map<String, dynamic> data)
  {
    final currentWeather = data["current_weather"] as Map<String, dynamic>;
    final hourly = data["hourly"] as Map<String, dynamic>;
    return WeatherModel(currentWeather: currentWeather, hourly: hourly);

  }
}

class CurrentWeather
{
  CurrentWeather({
    required this.temperature,
    required this.windspeed,
    required this.weathercode,
    required this.winddirection,
    required this.isDay,
  });

  final double temperature;
  final double windspeed;
  final int weathercode;
  final double winddirection;
  final int isDay;

  factory CurrentWeather.fromJson(Map<String, dynamic> data)
  {
    final temperature = data["temperature"] as double;
    final windspeed  = data["windspeed"] as double;
    final weathercode = data["weathercode"] as int;
    final winddirection = data["winddirection"] as double;
    final isDay = data["isDay"] as int;
    return CurrentWeather(
      temperature : temperature,
      windspeed   : windspeed,
      winddirection    : winddirection,
      weathercode      : weathercode,
      isDay            : isDay);
  }
}

class HourlyCast
{
  HourlyCast ({required this.time, required this.temperature});

  final List<String> time;
  final List<double> temperature;

  factory HourlyCast.fromJson(Map<String, dynamic> data){
    final List<String> time = data["time"] as List<String>;
    final List<double> temperature = data["temperature_2m"] as List<double>;
    return HourlyCast (time: time, temperature: temperature);
  }
}