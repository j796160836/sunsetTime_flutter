import 'dart:convert';

import 'package:flutter_sunset_time/sunset_sunrise_data_response.dart';
import 'package:http/http.dart' as http;

class ApiRepository {
  Future<SunsetSunriseDataResponse> fetchData() async {
    final response = await http.get(Uri.parse('https://api.sunrise-sunset.org/json?lat=22.62624&lng=120.2813142&date=today&formatted=0'));
    final map = json.decode(response.body);
    return SunsetSunriseDataResponse(map);
  }
}
