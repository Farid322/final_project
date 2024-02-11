import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/utils/app_asset.dart';

import '../../../../../core/routes/app_routes.dart';


class BluetoothPage extends StatelessWidget {
  const BluetoothPage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      Column(
        children: [
       Container(
        width: 510,
        height: 350,
      decoration: const BoxDecoration(
      
        image: DecorationImage(
          image: AssetImage("assets/images/Ellipse 63.png"),
          fit: BoxFit.cover
        ),
          
      ),
         child:  const Column(
           children: [
             SizedBox(
               height: 60,
             ),
             Row(
               children: [
                SizedBox(
                  width: 6,
                ),
                Icon(Icons.arrow_back,
                color: Colors.white),
                 SizedBox(
                  width: 7,
                 ),
                 Align(
                  alignment: Alignment.centerLeft,
                   child: Text(
                     'Bluetooth',
                     style: TextStyle(
                     color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Roboto',
                       fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                     ),
                 ),
               ],
             ),
               SizedBox(
                 height: 30,
               ),
              
               SizedBox(
                 height: 150,
                 width: 315,
                 child: Text('We aim to save time by using dialysis belt: Using programming technology and artificial intelligence with easy application which the patient can follow up with the process of dialysis and his vital sign, please, turn on your bluetooth to let us help you.',
                 style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  fontWeight: FontWeight.w300
                 ),
                 
                 )
                )
           ],
         ),
    
       ),
      
                InkWell(
                  onTap: (){
                    GoRouter.of(context).go(RouterNames.PatientRegisterPage);
                  },
                  child: Container(
                           width: 151,
                          height: 47,
                          decoration: ShapeDecoration(
                          color: const Color(0xFFDF7861),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          shadows: const [
                              BoxShadow(
                    color: Color(0x210E5C6D),
                    blurRadius: 13,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                              )
                          ],
                          ),
                          child:  const Center(
                            child: Text(
                              'Start',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    
                              ),
                          ),
                          )
                      ),
                ),
      
       const SizedBox(height: 10,),
      Image.asset(AppAssets.blutoothimage),
        ],
      ),
    );
  }
}