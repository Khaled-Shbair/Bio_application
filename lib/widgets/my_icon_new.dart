import 'package:flutter/material.dart';

class MyIconNew extends StatelessWidget {
  const MyIconNew({
    this.icon,
    required this.text,
    required this.onTap,
    required this.colors,
    this.leading,
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
      margin: const EdgeInsetsDirectional.only(
        start: 20,
        end: 20,
        bottom: 10,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: AlignmentDirectional.centerStart,
          end: AlignmentDirectional.centerEnd,
          colors: colors,
        ),
      ),
      child: ListTile(
        onTap: onTap,
        horizontalTitleGap: 10,
        leading: leading ??
            Icon(
              icon,
              color: iconColor,
              size: size,
            ),
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Roboto',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
