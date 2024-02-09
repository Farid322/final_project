import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';

import '../../peresentaion/widgets/custom_button.dart';

class PatientSignUp extends StatelessWidget {
  const PatientSignUp({super.key});
   static String id = 'PatientSignUp ';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [  
              const SizedBox(
                width:375,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text('Skip',
                style:TextStyle( color: Color(0xFF0E5C6D),
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                      )
                ),
              ),
              
                const SizedBox(width: 17),
                  const SizedBox(
                    height: 58,
                    width: 276,
                    child: Text('Please answer those Questions To get more details ..',
                    maxLines: 2,
                          style: TextStyle(
                             color: Colors.grey,
                            fontSize: 16,
                          fontWeight: FontWeight.w500,  
                      ),
                    ),
                  ),
                
                  const SizedBox(
                    height: 92,
                  ),
                
                  Container(
                    width: 293,
                    height: 390,
                    decoration: ShapeDecoration(
                      shape:RoundedRectangleBorder(borderRadius:
                      BorderRadius.circular(13) ) ,
                      color: Colors.white,
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                                  blurRadius: 9,
                                 offset: Offset(0, 0),
                                   spreadRadius: 4,
                        )
                      ]
                    
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
                          child: Text('Do you suffer from any disease?',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                        ),
                      
                        Container(
                           width: 238,
                           height: 56,
                        child: TextFormField(  
               decoration: InputDecoration(
                 contentPadding:const EdgeInsets.symmetric(
                   vertical: 16,
                   horizontal:21,
                 ) ,
                 hintText:'ex. I suffer from diabetes ' ,
                 hintStyle: const TextStyle(fontFamily: 'Roboto',
                 fontSize: 15
                 ),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
               )
               ),
               
             ),
           ),
              const SizedBox(
                height:95 ,
              ),
              Row(
                children: [
                TextButton(onPressed: () {
                  GoRouter.of(context).go(RouterNames.SignUppatient);
                },
                  child: const Text('Back',
                  style:TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0E5C6D),
                    fontFamily: 'Roboto'
                  ),),
                ),
                const SizedBox(
                  width:87 ,
                ),
                  Container(
             width: 124,
            height: 47,
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
            child:  const Center(
              child: Text(
                'Done',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    
                ),
            ),
            )
              ),
                ],
              ),
          
                      ]
                      )
                    
                      ),


            const SizedBox(height: 30),
              
                      const CustomButton(text: 'Sign Up'),
                
                  const SizedBox(height: 30),
                
                const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          SizedBox(
                            width: 110,
                            child: Divider(color: Color(0xFF5D5D5D),
                            height:1 ,
                            thickness: 1,
                            ),
                          ),
                       Text('OR'),
                           SizedBox(
                            width: 110,
                            child: Divider(color: Color(0xFF5D5D5D),
                            height:1 ,
                            thickness: 1,
                            ),
                          ),
                      
                      ],
                     ),
                
                       const SizedBox(height: 43),
            
                   
                          Container(
                  width: 289,
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
                 child:Row(
                   children: [
                     SvgPicture.asset('assets/images/google.svg',height: 50,width: 45,),
                     const Text('Register with Google')
                   ],
                 ),
                    ) ,
                       
                      const SizedBox(height: 13),
                
                       Container(
                  width: 289,
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
                 child:Row(
                   children: [
                     SvgPicture.asset('assets/images/Facebook.svg',height: 50,width: 45,),
                     const Text('Register with Facebook')
                   ],
                 ),
                    ) ,
              const SizedBox(height: 39),
                   const Row(
                    children: [
                      Text('Already have an account? ',style: TextStyle(color:Color(0xFF737373),
                                  fontSize: 15, fontWeight: FontWeight.w600),),
                                 Text('login',style: TextStyle(color: Color(0xFF737373),
                                              fontSize: 15,
                                                 fontWeight: FontWeight.w600,),)
                    ],
                   )
                
                
                      
                

                ],
              ),
        ),
      ),
        
      
    );
  }
}