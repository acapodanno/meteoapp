import 'package:flutter/material.dart';
import 'package:meteoapp/components/CityWeather.dart';
import 'package:meteoapp/model/CityModel.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView.builder(
        itemCount: weatherData.length,
        itemBuilder: (context, index) => CityWeather(weatherData[index]),) ,);
  }
}