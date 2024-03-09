import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlify/constants/constants.dart';
import 'package:foodlify/views/category_page.dart';
import 'package:get/get.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({
    super.key,
    required this.category,
  });

   var category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(()=>const CategoryPage(),
        transition: Transition.fadeIn,
        duration: const Duration(milliseconds: 900),
        );
      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGray,
        child: Image.network(category['imageUrl'],fit: BoxFit.contain,),
      ),
      title: Text(
      category['title'],
      style: TextStyle(fontSize: 14,
      fontWeight: FontWeight.normal,
     ),
     
    ),
    trailing: Icon(Icons.arrow_forward_ios_rounded,color: kGray,size: 15.r),);
  }
}