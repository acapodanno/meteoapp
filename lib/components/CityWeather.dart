import 'package:flutter/material.dart';
import 'package:meteoapp/model/CityModel.dart';

class CityWeather extends StatelessWidget {
  final CityModel model;
  const CityWeather(this.model);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      backgroundImage(),
      body()
    ],);
  }
  Widget backgroundImage()=>Positioned(
    top:0,
    bottom: 0,
    left: 0,
    right: 0,
    child:Image.network(
      model.backgroundImageUrl,
    fit: BoxFit.cover,));
   
    Widget body() => Positioned(
    top:0,
    bottom: 0,
    left: 0,
    right: 0,
    child:SafeArea(child:
    Padding(padding:EdgeInsets.all(16),child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(model.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Text(model.temperature.toString()+"°",style: TextStyle(fontSize: 60),),
        SizedBox(height: 200,),
        CityWeatherForecastLsit(model.sevenDaysForecast)

      ],
    ))));
}
class CityWeatherForecastLsit extends StatelessWidget {
  final List<DayForecastModel> model;
  const CityWeatherForecastLsit(this.model);

  @override
  Widget build(BuildContext context) {
    return Expanded(child:Container(
      decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Padding(padding: EdgeInsets.all(16),
        child:Text("7 Day Forecast") ,),
        BoxDivider(),
        Expanded(child:ListView.separated(itemBuilder: (context, index) => ListTile(
          title: Text(model[index].name),
          trailing: Text(model[index].temperature.toString()+"°"),
        ), itemCount: model.length,
        separatorBuilder: (context, index) => BoxDivider(),
        ))
      ],),
      ));
  }
}
class BoxDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: Colors.white12,
    );
  }
}
