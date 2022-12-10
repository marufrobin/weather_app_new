import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app_new/model/model.dart';

class CustomHttp {
  Future<List<Weather>> fatchingData() async {
    List<Weather> weatherList = [];
    Model model;

    String apiToken = "175cf6ab4459aa37983a566b55f6167f";

    String url =
        "https://api.openweathermap.org/data/2.5/weather?lat=37.4219983&lon=-122.084&units=metric&appid=$apiToken";
    var resonpce = await http.get(Uri.parse(url));

    var data = jsonDecode(resonpce.body);
    for (var i in data) {
      model = Model.fromJson(i);
    }

    print("Responce: ${resonpce.body}");
    return weatherList;
  }
}
