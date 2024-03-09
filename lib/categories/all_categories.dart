import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlify/common/back_ground_container.dart';
import 'package:foodlify/constants/constants.dart';
import 'package:foodlify/constants/uidata.dart';
import 'package:foodlify/views/category_page.dart';
import 'package:foodlify/views/home/widgets/categorywidget.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

import 'Widgets/Category_tile.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,

        title: Text('Categories',
        style: TextStyle(fontSize: 18,
        fontWeight: FontWeight.w600
            
            ),
       ),
      ),
      body: Backgroundcontainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12.w,top: 10.h),
          height: height,
          child: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(categories.length, (i) {
            var category = categories[i];
            return CategoryTile(category: category);
          }),
        ),
        ),
      ),
    );
  }
}
