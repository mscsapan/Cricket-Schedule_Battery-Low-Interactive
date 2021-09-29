import 'dart:convert';
import 'dart:core';

import 'package:battery_low_interactive/model/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class NetworkService {
  Future<List<Schedule>> getSchedule() async {
    const String url =
        'https://rest.entitysport.com/v2/seasons/?token=437214169d9be2a73e91d22f76f68b52';
    try {
      http.Response response = await http.get(Uri.parse(url));
      List<Schedule> schedule = [];
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final Schedule list = Schedule.fromJson(data);
        schedule.add(list);
      }
      return schedule;
    } catch (e) {
      debugPrint('Exception is ${e.toString()}');
    }
    return getSchedule();
  }
}

/*class Api {
  static const String url =
      'https://rest.entitysport.com/v2/seasons/?token=437214169d9be2a73e91d22f76f68b52';

  Future<Schedule> getSchedule() async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final Schedule schedule = Schedule.fromJson(data);
        return schedule;
      } else {
        throw Exception('Data not found');
      }
    } catch (e) {
      debugPrint('Exception found: ${e.toString()}');
    }
    return getSchedule();
  }
}*/
