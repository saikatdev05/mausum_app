import 'package:flutter/material.dart';
import 'package:masum_app_2/worker/worker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String? temp;
  String? hum;
  String? air_speed;
  String? des;
  String? main;

  void startApp() async {
    worker instance  = worker(location: "Manawar");
    await instance.getData();

    temp = instance.temp;
    hum = instance.humidity;
    air_speed = instance.air_speed;
    des = instance.description;
    main = instance.main;

    Navigator.pushReplacementNamed(context, '/home',arguments: {
      "temp_value" : temp,
      "hum_value" : hum,
      "air_speed_value" : air_speed,
      "des_value" : des,
      "main_value" : main
    } );
  }

  @override
  void initState() {
    startApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Image.asset('assets/images/megh.jpg',height: 230,width: 230,),
            SizedBox(height: 10,),
            Text("Mausum App",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.lightGreenAccent
              ),),
            SizedBox(height: 10,),
            Text("Made By Saikat",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightGreenAccent
              ),
            ),
            SizedBox(height: 50,),
            SpinKitWave(
              color: Colors.deepOrangeAccent,
              size: 50.0,
            )
          ],
        ),
      ),
      backgroundColor: Colors.teal,
    );
  }
}
