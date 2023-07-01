import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({
    required this.text,
    required this.onTap,
    required this.colors,
    this.leading,
    this.icon,
    this.size = 24,
    this.iconColor = Colors.white,
    super.key,
  });

  final Color? iconColor;
  final IconData? icon;
  final String text;
  final Function() onTap;
  final double size;
  final Widget? leading;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        start: 20.w,
        end: 20.w,
        bottom: 5.h,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        gradient: LinearGradient(
          begin: AlignmentDirectional.centerStart,
          end: AlignmentDirectional.centerEnd,
          colors: colors,
        ),
      ),
      child: ListTile(
        onTap: onTap,
        horizontalTitleGap: 6.h,
        leading: leading ??
            Icon(
              icon,
              color: iconColor,
              size: size,
            ),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 18.sp,
            fontFamily: 'Roboto',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
