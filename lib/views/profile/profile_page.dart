import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlify/common/custom_container.dart';
import 'package:foodlify/constants/constants.dart';


class ProfilePage extends StatelessWidget{
  ProfilePage({super.key});
   List<Widget> pageList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(preferredSize: Size.fromHeight(120.h), child: Container(
        height: 120),
    ),

      body: SafeArea(
      child: CustomContainer(containerContents: Container()),
    ),
    );
  }
}