// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodlify/common/custom_appbar.dart';
import 'package:foodlify/constants/constants.dart';
import 'package:foodlify/controllers/tab_index_controller.dart';
import 'package:foodlify/views/cart/cart_page.dart';
import 'package:foodlify/views/home/home_page.dart';
import 'package:foodlify/views/profile/profile_page.dart';
import 'package:foodlify/views/search/search_page.dart';
import 'package:get/get.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Mainscreen extends StatelessWidget{
  Mainscreen({super.key});
   List<Widget> pageList =  [ 
   
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
    
   ];

  @override
  Widget build(BuildContext context) {
    
    final controller = Get.put(TabIndexController());
    return  Obx(() => Scaffold(
      
      body: Stack(
       children: [
         pageList[controller.tabIndex],
          
         Align(
          alignment: Alignment.bottomCenter,
          child: Theme(data: Theme.of(context).copyWith(canvasColor: kPrimary), 
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedIconTheme: const IconThemeData(color: Colors.black),
            selectedIconTheme: const IconThemeData(color: kWhite),
            onTap: (value){
            controller.setTabIndex = value;
            },
            currentIndex: controller.tabIndex,
            
            
            items: [ 
            BottomNavigationBarItem(icon: controller.tabIndex==0
             ? const Icon(AntDesign.appstore1):
             const Icon(AntDesign.appstore_o) , label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
             const BottomNavigationBarItem(
              icon: Badge(
                label: Text('1'),
                child: Icon(FontAwesome.opencart),), 
                 label: 'Cart'),
            BottomNavigationBarItem(icon: 
            controller.tabIndex==3 ? 
             const Icon(FontAwesome.user_circle):
            const Icon(FontAwesome.user_circle_o), label: 'Profile'),
            ],

          )),
         )

       ],

      ),

    ));
}
}