import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/rocket.dart';

class RocketsViewModel extends ChangeNotifier {
  List<Rocket> rockets = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchRockets() async {
    isLoading = true;
    notifyListeners();

    try {
      final response = await http.get(Uri.parse('https://api.spacexdata.com/v4/rockets'));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        rockets = data.map((json) => Rocket.fromJson(json)).toList();
        errorMessage = null;
      } else {
        errorMessage = 'Failed to load rockets';
      }
    } catch (e) {
      errorMessage = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }
}
