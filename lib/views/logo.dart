import 'package:flutter/material.dart';
import 'package:graduation_project/views/about_diabelt.dart';
import 'package:graduation_project/views/sign_up_patient.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});
 static String id='LogoPage';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF0E5C6D),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            const Text('Logo',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: Colors.white
            ),),
            const SizedBox(
              height: 400,
            ),

            
               InkWell(
                onTap:() {
                  Navigator.pushNamed(context, SignUppatient.id);
                },
                 child: Container(
                        width: 330,
                         height: 52,
                         
                         decoration: ShapeDecoration(
                         color: const  Color(0xFFDA7761),
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                         shadows: const [
                             BoxShadow(
                    color: Color(0x210E5C6D),
                    blurRadius: 40,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                             )
                         ],),
                          child:  const Center(
                           child: Text(
                             'Doctor',
                             
                             textAlign: TextAlign.center,
                             style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    
                             ),
                         ),
                         )
                         ),
               ),
        const SizedBox(
          height:23 ,
        ),

                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AboutDiabelt.id);
                      },
                      child: Container(
                             width: 330,
                              height: 52,
                              
                              decoration: ShapeDecoration(
                            
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(8)),
                              shadows: const [
                                  BoxShadow(
                                      color: Color(0x210E5C6D),
                                      blurRadius: 40,
                                      offset: Offset(0, 10),
                                      spreadRadius: 0,
                                  )
                              ],),
                               child:  const Center(
                                child: Text(
                                  'patient',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      
                                  ),
                              ),
                              )
                              ),
                    ),

          ],
        ),
      ),
    );
  }
}