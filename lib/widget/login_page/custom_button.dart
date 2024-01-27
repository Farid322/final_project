import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
 
  @override
  Widget build(BuildContext context) {
    return     Container(
           width: 293,
          height: 42,
          decoration: ShapeDecoration(
          color: const Color(0xFF0E5C6D),
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
      );
  }
}