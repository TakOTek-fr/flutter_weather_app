import 'package:flutter/material.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {

  final String _title='Météo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 10.0,left: 8.0,right: 8.0),
          height: 220,
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), ),
              color: Color(0xFFFFB74D),
              elevation: 10,
              child:Column(
                children: [
                  citySection,
                  descSection,
                  tempSection,
                ],
              ),),
        )
      ),
    );
  }

  Widget citySection = Container(
    margin: const EdgeInsets.only(top:16.0),
    padding: const EdgeInsets.only(top: 16.0),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'New York',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget descSection = Container(
    padding: const EdgeInsets.only(top:8.0),
    child: Row(
      children: [ Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Container(
            child: Text(
              'Ensoleillé',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              )
            ),
          )],
        ),
      )],
    )
  );

  Widget tempSection = Container(
    padding:  const EdgeInsets.all(8.0),
    margin: const EdgeInsets.only(top: 12.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Image.asset('images/weather_sunny_white.png',
                          width: 75,
                          height: 75,
                          fit: BoxFit.cover,
              ),
            Text(
              '24°C',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
            )
        ],
      ),
    );
}



