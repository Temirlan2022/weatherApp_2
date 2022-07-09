import 'package:flutter/material.dart';
import 'package:tapshyrma_weather/services/weather_api_client.dart';
import 'package:tapshyrma_weather/views/additional_information.dart';
import 'package:tapshyrma_weather/views/current_weather.dart';
import 'models/weather_models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weatherapiclient client = Weatherapiclient();
  Weather data;

  Future<void> getData() async {
    data = await client.getCurrentWeather('Гульча');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF9F9F9F9),
        appBar: AppBar(
          backgroundColor: Color(0xffF9F9F9F9),
          elevation: 0.0,
          title: Text(
            'Weather App',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  currentWeather(Icons.wb_sunny_rounded, "${data.temp}",
                      "${data.cityName}"),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "дагы маалыматтар",
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Color(0xff212121),
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  SizedBox(
                    height: 20.0,
                  ),
                  additionalInformation('${data.wind}', '${data.humidity}',
                      '${data.pressure}', '${data.feelsLike}')
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          },
        ));
  }
}

// '$URL?q=$city&appid=$apiKey&units=metric'

// const apiKey = 'a14274a1546fbbf85c0d9d6511ccea60';
// const URL = 'https://api.openweathermap.org/data/2.5/weather';

// $URL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric
