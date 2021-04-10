import 'package:flutter_sunset_time/sunset_sunrise_data.dart';

class SunsetSunriseDataResponse {
  SunsetSunriseData results;
  String status;

  SunsetSunriseDataResponse(Map map) {
    results = SunsetSunriseData(map['results']);
    status = map['status'];
  }

  Map toJson() {
    var map = Map();
    map['results'] = results.toJson();
    map['status'] = status;
    return map;
  }
}
