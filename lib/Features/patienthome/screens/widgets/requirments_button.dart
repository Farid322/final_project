import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
 
  @override
  Widget build(BuildContext context) {
    return     InkWell(
      onTap: onTap,
      child: Container(
             width: 118,
            height: 47,
            decoration: ShapeDecoration(
            color:const Color(0xff0E5C6D),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            shadows: const [
                BoxShadow(
                    color: Color(0x210E5C6D),
                    blurRadius: 13,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                )
            ],
            ),
            child:  Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    
                ),
            ),
            )
        ),
    );
  }
}