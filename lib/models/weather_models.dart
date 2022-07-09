class Weather {
  String cityName;
  double temp;
  double wind;
  double humidity;
  double feelsLike;
  int pressure;

  Weather(
      {this.cityName,
      this.temp,
      this.wind,
      this.humidity,
      this.feelsLike,
      this.pressure});

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temp = json['main']['temp'];
    wind = json['wind']['speed'];
    pressure = json['main']['pressure'];
    feelsLike = json['main']['feels_like'];
    humidity = json['main']['humidity'];
  }
}
