import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlify/constants/constants.dart';
import 'package:foodlify/constants/uidata.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class RestaurantWidget extends StatelessWidget {
 

  const RestaurantWidget({super.key, required this.image, required this.logo, required this.title, required this.time, required this.rating, this.onTap});
  final String image;
  final String logo;
  final String title;
  final String time;
  final String rating;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:  EdgeInsets.only(right: 12.w),
        child: Container(
          width: width*.75,
          height: 192.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: SizedBox(
                        height: 112.h,
                        width: width*0.8,
                        child: Image.network(image,fit: BoxFit.fitWidth,),
                      ),
                    ),
                    Positioned(
                      right: 10.w,
                      top: 10.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                        child: Container(
                          color: kLightWhite,
                          child: Padding(padding: EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.r),
                            child: Image.network(logo,fit: BoxFit.cover,height: 20.h,width: 20.w,),

                          ),
                          ),
                         
                          
                        ),
                      ),
                    )

                  ],
                ),
              ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('title',
        style: TextStyle(fontSize: 12,

        fontWeight: FontWeight.w500,
        color: kDark
            
            ),
       ),
       Row(
        children: [
          Text('Delivery time',
        style: TextStyle(fontSize: 9,

        fontWeight: FontWeight.w500,
        color: kGray),),
       
       
       Row(
        children: [
          RatingBarIndicator(
          rating:5,
          itemCount: 5,
          itemSize: 30.0,
          itemBuilder: (context, index) => Icon(
            Icons.star,
            color: Colors.amber,
          ),)
        ]
       )
              

              ],
            ),],),
          ),
          
            ],
      ),
       ), ),);
  }
}