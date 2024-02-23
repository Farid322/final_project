import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
    required this.text,
    this.onTap,
    required this.width,
    required this.hieght,
    required this.fontsize,
    required this.radius,
    required this.color,
    this.shadow,
    required this.icon,
    this.schedulewidth,
    required this.herozintal,
    required this.textcolor,
  });
  final double herozintal;
  final String text;
  final double width;
  final double hieght;
  final double fontsize;
  final double radius;
  final Color? color;
  final IconData? icon;
  final List<BoxShadow>? shadow;
  final void Function()? onTap;
  final double? schedulewidth;
  final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: hieght,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
            child: Row(
              children: [
                SizedBox(
                  width: schedulewidth,
                  height: 20,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: herozintal, vertical: 5),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textcolor,
                      fontFamily: 'Roboto',
                      fontSize: fontsize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// const Color(0xFF0E5C6D)
//shadow
// color: Color(0x210E5C6D),
           // blurRadius: 13,
            //offset: Offset(0, 1),
            //spreadRadius: 0,