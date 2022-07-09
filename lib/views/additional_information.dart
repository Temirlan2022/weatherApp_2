import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600);
    
TextStyle infoFont =
    const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400);

Widget additionalInformation(
    String wind, String humidity, String pressur, String feelsLike) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wind',
                  style: titleFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text('Pressure', style: titleFont,)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$wind',
                  style: infoFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text('$pressur', style: titleFont,)
              ],
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Humidity',
                  style: infoFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text('Feels like', style: titleFont,)
              ],
            ),
               Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$humidity',
                  style: infoFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text('$feelsLike', style: titleFont,)
              ],
            ),
          ],
        )
      ],
    ),
  );
}
