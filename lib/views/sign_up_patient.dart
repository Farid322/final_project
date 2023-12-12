

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/widget/login_page/custom_button.dart';
import 'package:graduation_project/widget/login_page/custom_text_form_field.dart';
import 'package:graduation_project/widget/login_page/social_linkes_category.dart';

class SignUppatient extends StatelessWidget {
  const SignUppatient({super.key});
  static String id = 'SignUppatient';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical:70 ),
        child: SingleChildScrollView(
          child: Column(
            children: [
               const SizedBox(
                width: 343,
                 child: Row(
                   children: [
                   Icon(Icons.arrow_back),
                   SizedBox(width: 3,),
                     Text('Create account',
                           style: TextStyle(
                              color: Colors.black,
                             fontSize: 26,
                           fontWeight: FontWeight.w700,
                       
          
                ),
              ),
                   ],
                 ),
             ),
              const SizedBox(height: 30,),
              const Align(
              alignment: Alignment.centerLeft,
              child: Text('UserName',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: 'ex.LaraAlaa'),
              
               const SizedBox(height: 30),
               const Align(
              alignment: Alignment.centerLeft,
              child: Text('Email adress',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: 'Your email'),
           const SizedBox(height: 30),
               Row(children:
                 [
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        const Align(  alignment: Alignment.centerLeft,
                                  child: Text('contry code',)),
                                    CustomTextFormField(hintText: '+012',
                                    width:60,
                                    height: 56,),
                      ],
                    ),
                   
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                      Container(
                        width: 201,
                        child: Column(
                          children: [
                            const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('Mobilenumber',maxLines: 1,)),
                                        CustomTextFormField(hintText: '1024165373',
                                        width: 150,
                                        height: 56,
                                        ),
                          ],
                        ),
                      ),
          
                ],
                ),

                 const SizedBox(height: 30),
                 const Align(
              alignment: Alignment.centerLeft,
              child: Text('password',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: '......'),

           const SizedBox(height: 30),

              const Align(
              alignment: Alignment.centerLeft,
              child: Text(' confirm password',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: '......'),

             const SizedBox(height: 30),
 
              const Align(
              alignment: Alignment.centerLeft,
              child: Text('Age',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: 'd/m/y'),
          
            const SizedBox(
              height: 33,
            ),
              
              const Align(
            alignment:  Alignment.centerLeft,
              child: Text('Gender')),

             
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10 ),
                     child: Container(
                              width: 138,
                             height: 46,
                             
                             decoration: ShapeDecoration(
                             color:  Colors.white,
                             shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1.5,color: Colors.grey),
                              borderRadius: BorderRadius.circular(8)),
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
                                 'Female',
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        
                                 ),
                             ),
                             )
                         ),
                   ),

                    Container(
                             width: 138,
                            height: 46,
                            
                            decoration: ShapeDecoration(
                            color:  Colors.white,
                            shape: RoundedRectangleBorder(
                             side: const BorderSide(width: 1.5,color: Colors.grey),
                             borderRadius: BorderRadius.circular(8)),
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
                                'Male',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                       color: Colors.grey,
                       fontFamily: 'Roboto',
                       fontSize: 14,
                       fontWeight: FontWeight.w400,
                       
                                ),
                            ),
                            )
                        ),
                 ],
               ),

               const SizedBox(
                height: 23,
               ),
              
              const Align(
              alignment: Alignment.centerLeft,
              child: Text('Barcode',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: ''),
          
          
               
            
          
            ],
          ),
        ),
      ),
    );
  }
}