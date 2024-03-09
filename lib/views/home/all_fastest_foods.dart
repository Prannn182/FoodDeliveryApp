import 'package:flutter/material.dart';
import 'package:foodlify/constants/constants.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: kOffWhite,
        elevation:0.3,
        title : Text('Fastest Foods',
        style: TextStyle(fontSize: 13,
        fontWeight: FontWeight.w600,
        color: kGray
            
            ),
       )),
      body: const Center(
        child: Text("Fastest Foods"),
      ),
    );
  }
}