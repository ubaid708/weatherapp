class weather {
  String? cityname;
  double? temp;
  double? wind;
  int? humidity;
  double? feel_like;
  int? pressure;
  weather(
      {this.cityname,
      this.temp,
      this.wind,
      this.humidity,
      this.feel_like,
      this.pressure});

  weather.fromjson(Map<String, dynamic> json) {
    cityname = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feel_like = json["main"]["feel_like"];
  }
}
