import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlify/categories/all_categories.dart';
import 'package:foodlify/constants/constants.dart';
import 'package:foodlify/controllers/category_list_controller.dart';
import 'package:get/get.dart';

class Categorywidget extends StatelessWidget {
  Categorywidget({
    super.key,
    
     this.category,
  });

  
   var category;

  @override
  Widget build(BuildContext context) {
     final controller =Get.put(CategoryController());
    return GestureDetector(
     
      onTap: () {
        if(controller.categoryValue==category['_id']){
           controller.updateCategory='';
           controller.updateTitle='';
        }else if(category['value']=='more'){
           Get.to(()=>const AllCategories(),
           transition: Transition.fadeIn,
           duration: const Duration(microseconds: 900)
           );
        }
        
        else{
          controller.updateCategory=category['_id'];
           controller.updateCategory=category['_title'];
        }
      },
      child: Obx(() => Container(
        margin: EdgeInsets.only(right: 5.w),
        padding: EdgeInsets.only(top: 4.h),
        width: width * 0.18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: controller.categoryValue==category['_id'] ? kSecondary:kOffWhite, width: .5.w),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
              child: Image.network(
                category['imageUrl'],
                fit: BoxFit.contain,
                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                  // Print the error to the console
                  print('Error loading image: $error');
    
                  // You can return a custom widget or placeholder here
                  return Icon(
                    Icons.error,
                    color: Colors.red, // Customize the color of the error icon
                  );
                },
              ),
            ),
            Text(
              category['title'],
              style: TextStyle(
                fontSize: 10.sp,
                color: kDark,
              ),
            ),
          ],
        ),
      ),
    ),
      );
  }
}