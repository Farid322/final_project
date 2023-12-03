import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLinkesCategory extends StatelessWidget {
  const SocialLinkesCategory({super.key, required this.iconImage});
  final String iconImage;
  @override
  Widget build(BuildContext context) {
    return 
         Container(
                width: 130,
                height: 45,
                 decoration: ShapeDecoration(
                  color: Colors.white,
                 shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10),
                      ),
                   shadows: const [
                      BoxShadow(
                        color: Color(0x21000000),
                                blurRadius: 13,
                                  offset: Offset(0, 1),
                                 spreadRadius: 0,
                                                 ),
                                             ],
                                      ),
               child:SvgPicture.asset(iconImage,height: 45,width: 45,),
                                           
                                          
                                             ) ;
                                          }
                                          }