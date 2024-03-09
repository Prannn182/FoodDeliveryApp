import 'package:flutter/material.dart';
import 'package:foodlify/constants/constants.dart';

class AllNearByRestaurants extends StatelessWidget {
  const AllNearByRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation:0.3,
        title : Text('NearBy Restaurants',
        style: TextStyle(fontSize: 13,
        fontWeight: FontWeight.w600,
        color: kGray
            
            ),
       )),
      body: const Center(
        child: Text("Near By Restaurants"),
      ),
    );
  }
}