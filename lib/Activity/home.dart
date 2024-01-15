import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weather_icons/weather_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    print("This is a init state");
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set state called");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Widget Destroyed");
  }

  @override
  Widget build(BuildContext context) {
    var city_name = ["MUMBAI", "DELHI", "KOLKATA", "CHENNAI"];
    Map? info =ModalRoute.of(context)?.settings.arguments as Map?;
    print(info?['temp_value']);

    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.blue,
        ),
      ),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
              0.1,
              0.6
            ],
                colors: [
              Colors.blue,
              Colors.pinkAccent,
            ])),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.lightBlue,
                      ),
                      margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search any city Name...."),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white.withOpacity(0.5)),
                    margin: EdgeInsets.symmetric(horizontal: 26),
                    padding: EdgeInsets.all(26),
                    child: Row(
                      children: [
                        //Image.network("hhhh"),
                        Column(
                          children: [
                            Text("scattered cloud",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),),
                            Text("In Panchgeria",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white.withOpacity(0.5)),
                    margin: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                    padding: EdgeInsets.all(26),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(WeatherIcons.day_sunny),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("41",style: TextStyle(
                              fontSize: 60
                            ),),
                            Text("C",style: TextStyle(
                              fontSize: 30
                            ),)
                          ],

                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white.withOpacity(0.5)),
                    margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                    padding: EdgeInsets.all(26),
                    height: 150,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(WeatherIcons.day_windy),

                          ],
                        ),
                        SizedBox(height: 20,),

                        Text("20.9",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("km/h")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white.withOpacity(0.5)),
                    margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                    padding: EdgeInsets.all(26),
                    height: 150,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(WeatherIcons.humidity),

                          ],
                        ),
                        SizedBox(height: 20,),

                        Text("50",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("percent")
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("made by Saikat"),
                  Text("Data provide by saikat")
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
