class SunsetSunriseData {
  String sunrise;
  String sunset;

  SunsetSunriseData(Map map) {
    sunrise = map['sunrise'];
    sunset = map['sunset'];
  }

  Map toJson() {
    var map = Map();
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    return map;
  }
}