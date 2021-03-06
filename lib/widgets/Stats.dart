import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  final String memoryUsage;
  final String temperature;

  Stats({
    required this.memoryUsage,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.device_thermostat_outlined,
          size: 16.0,
          color: Colors.white,
        ),
        SizedBox(width: 5.0),
        Text(
          '$temperature┬░',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "SFT-Regular",
            fontSize: 12.0,
          ),
        ),
        SizedBox(width: 10.0),
        Icon(
          Icons.storage,
          size: 16.0,
          color: Colors.white,
        ),
        SizedBox(width: 10.0),
        Text(
          memoryUsage,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "SFT-Regular",
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}