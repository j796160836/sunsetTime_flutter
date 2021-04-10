import 'dart:convert';

import 'package:flutter_sunset_time/sunset_sunrise_data_response.dart';
import 'package:test/test.dart';

void main() {
  group('api_parse_test', () {
    test('json_parse_test', () {
      // Arrange
      String jsonString =
          "{\"results\":{\"sunrise\":\"2021-04-09T21:42:34+00:00\",\"sunset\":\"2021-04-10T10:17:34+00:00\",\"solar_noon\":\"2021-04-10T04:00:04+00:00\",\"day_length\":45300,\"civil_twilight_begin\":\"2021-04-09T21:19:53+00:00\",\"civil_twilight_end\":\"2021-04-10T10:40:16+00:00\",\"nautical_twilight_begin\":\"2021-04-09T20:53:13+00:00\",\"nautical_twilight_end\":\"2021-04-10T11:06:56+00:00\",\"astronomical_twilight_begin\":\"2021-04-09T20:26:11+00:00\",\"astronomical_twilight_end\":\"2021-04-10T11:33:57+00:00\"},\"status\":\"OK\"}";
      String expected = "2021-04-10T10:17:34+00:00";
      // Act
      final map = json.decode(jsonString);
      final response = SunsetSunriseDataResponse(map);
      String actual = response.results.sunset;
      // Assert
      expect(expected, actual);
    });

    test('date_parse_test', () {
      // Arrange
      String dateString = "2021-04-10T10:17:34+00:00";
      DateTime expected = DateTime.utc(2021, 4, 10, 10, 17, 34);
      // Act
      DateTime actual = DateTime.parse(dateString);
      // Assert
      expect(expected, actual);
    });
  });
}
