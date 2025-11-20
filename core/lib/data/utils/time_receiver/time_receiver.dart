import 'dart:convert';

import 'package:core/domain/utils/core_logger.dart';
import 'package:http/http.dart' as http;

abstract final class TimeReceiver {
  static Future<DateTime> fetchUnifiedTime() async {
    try {
      const url =
          'https://timeapi.io/api/time/current/zone?timeZone=Europe%2FMoscow';

      final response = await http.get(Uri.parse(url)).timeout(
            const Duration(seconds: 10),
          );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);

        final unifiedTime =
            (jsonData as Map<String, dynamic>)['dateTime'].toString();

        return DateTime.parse(unifiedTime);
      } else {
        throw Exception('Time fetch error');
      }
    } catch (e) {
      CoreLogger.errorLog('$e');

      return DateTime.now();
    }
  }
}
