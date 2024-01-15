//CLASS -DIFFERENT ,METHOD
//INSTANCE -
import 'dart:convert';

import 'package:http/http.dart';
class worker
{
  String? location;
  //constructor
  worker({this.location})
  {
    location=this.location;
  }

  String? temp;
  String? humidity;
  String? air_speed;
  String? description;
  String? main;


  //method=

   Future<void> getData() async
  {
    try{
      Response response  =await get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=c20135fd0a8f05ebf7df71050587618e"));
      Map data = jsonDecode(response.body);

      //Getting Temp,Humidiy
      Map temp_data = data['main'];
      String getHumidity = temp_data['humidity'].toString();
      String getTemp = temp_data['temp']-273.15;

//Getting air_speed
      Map wind = data['wind'];
      double getAir_speed = wind["speed"]/0.27777777777778;


      //Getting Description
      List weather_data = data['weather'];
      Map weather_main_data = weather_data[0];
      String getMain_des = weather_main_data['main'];
      String getDesc = weather_main_data["description"];


      //Assigning Values
      temp = getTemp.toString();
      humidity = getHumidity;
      air_speed = getAir_speed.toString();
      description = getDesc;
      main = getMain_des;

    }catch(e)
    {
      temp = "oh noooooo";
      humidity = "oh noooo";
      air_speed = "oh nooooo";
      description ="oh noooo";
      main = "oh noooo";

    }



  }


}




