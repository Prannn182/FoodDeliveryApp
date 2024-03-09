import 'package:flutter/material.dart';
import 'package:foodlify/constants/constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation:0.3,
        title : Text('Recommendations',
        style: TextStyle(fontSize: 13,
        fontWeight: FontWeight.w600,
        color: kGray
            
            ),
       )),
      body: const Center(
        child: Text("Recommendations"),
      ),
    );
  }
}