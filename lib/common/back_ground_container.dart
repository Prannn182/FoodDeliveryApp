
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodlify/constants/constants.dart';

class Backgroundcontainer extends StatelessWidget {
  const Backgroundcontainer({super.key, required this.child, required this.color});
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          topLeft: Radius.circular(20.r),
        ),
        image: const DecorationImage(image: AssetImage("assets/images/restaurant_bk.png"),
        fit: BoxFit.fill,
        opacity: .7,
        )
      ),
      child: child,
    );
  }
}