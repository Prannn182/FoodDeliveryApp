import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlify/common/custom_container.dart';
import 'package:foodlify/common/heading.dart';
import 'package:foodlify/constants/constants.dart';
import 'package:foodlify/common/custom_appbar.dart';
import 'package:foodlify/views/home/all_fastest_foods.dart';
import 'package:foodlify/views/home/all_near_by_restaurants.dart';
import 'package:foodlify/views/home/recommendations.dart';
import 'package:foodlify/views/home/widgets/category_list.dart';
import 'package:foodlify/views/home/widgets/food_list.dart';
import 'package:foodlify/views/home/widgets/nearby_restaurants_list.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget{
  HomePage({super.key});
   List<Widget> pageList = [];

  @override
  // ignore: dead_code, dead_code
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: kPrimary,
      appBar:  PreferredSize(preferredSize: Size.fromHeight(90.h), child: CustomAppBar()
      ),
    

      body: SafeArea(
      child: CustomContainer(containerContents: Column(children: [
        const CategoryList(),
        Heading(text: 'Nearby Restaurants',onTap: (){
          Get.to(()=>const AllNearByRestaurants(),
          transition: Transition.cupertino,
          duration: Duration(milliseconds: 900));
        },),
        const NearByRestaurants(),
        
        Heading(text: 'Try Something New !',onTap: (){
          Get.to(()=>const Recommendations(),
          transition: Transition.cupertino,
          duration: Duration(milliseconds: 900));
        },),
        const FoodList(),
        Heading(text: 'Fastest Food Closer To You',onTap: (){
          Get.to(()=>const AllFastestFoods(),
          transition: Transition.cupertino,
          duration: Duration(milliseconds: 900));
        },),
        const FoodList(),

      ],)),
    ),
    );
    
  }
}