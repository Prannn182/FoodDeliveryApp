import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:sunrise_sunset_calc/sunrise_sunset_calc.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 103, 235, 103),
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/65482186?v=4",
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey, user',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Location', // Replace with the actual address
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          Text(
            getTimeOfDay(),
            style: const TextStyle(fontSize: 30),
            
          ),
        ],
      ),
    );
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 0 && hour < 12) {
      return '☀';
    } else if (hour >= 12 && hour < 16) {
      return '⛅';
    } else {
      return '🌙';
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}