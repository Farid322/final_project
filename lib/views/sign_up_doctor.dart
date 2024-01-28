

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/routes/app_routes.dart';
import 'package:graduation_project/widget/login_page/custom_button.dart';
import 'package:graduation_project/widget/login_page/custom_text_form_field.dart';

class SignUpdoctor extends StatelessWidget {
  const SignUpdoctor({super.key});
  static String id = 'SignUpdoctor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical:70 ),
        child: SingleChildScrollView(
          child: Column(
            children: [
                SizedBox(
                width: 343,
                 child: Row(
                   children: [
                   TextButton(
                    onPressed: () {
                      GoRouter.of(context).go(RouterNames.DoctorRegisterPage);
                    },
                    child: const Icon(Icons.arrow_back)),
                   const SizedBox(width: 3,),
                     const Text('Create account',
                           style: TextStyle(
                              color: Colors.black,
                             fontSize: 26,
                           fontWeight: FontWeight.w700,
                       
          
                ),
              ),
                   ],
                 ),
             ),
              const SizedBox(height: 37,),
              const Align(
              alignment: Alignment.centerLeft,
              child: Text('UserName',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: 'ex.LaraAlaa'),
              const SizedBox(
                height: 30,
              ),
              
               const Align(
              alignment: Alignment.centerLeft,
              child: Text('Email adress',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: 'Your email'),
               const SizedBox(
                height: 30,
              ),
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
          const SizedBox(
                height: 30,
              ),
                 const Align(
              alignment: Alignment.centerLeft,
              child: Text('password',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: '......'),
            const SizedBox(
                height: 30,
              ),
              const Align(
              alignment: Alignment.centerLeft,
              child: Text(' confirm password',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: '......'),
            const SizedBox(
                height: 30,
              ),
              const Align(
              alignment: Alignment.centerLeft,
              child: Text('ID',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: '12907484648358'),
            const SizedBox(
                height: 30,
              ),
              const Align(
              alignment: Alignment.centerLeft,
              child: Text('location',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: 'Masoura'),
            const SizedBox(
                height: 30,
              ),
              const Align(
              alignment: Alignment.centerLeft,
              child: Text('Exprience',)),
              const SizedBox(height: 5,), 
              CustomTextFormField(hintText: 'ex.7years'),

            const SizedBox(
                height: 64,
              ),

              const CustomButton(text: 'sign Up'),
            const SizedBox(
                height: 47,
              ),
              
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
                     const SizedBox(
                             height: 30,
                         ),
          
                    
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
             const SizedBox(
                height: 39,
              ),
          
                  Row(
                  children: [
                    const Text('Already have an account? ',style: TextStyle(color:Color(0xFF737373),
                                fontSize: 15, fontWeight: FontWeight.w600),),
                               TextButton( onPressed: (){
                                GoRouter.of(context).go(RouterNames.DoctorLoginPage);
                               },
                                 child: const Text('login',style: TextStyle(color: Color(0xFF737373),
                                              fontSize: 15,
                                                 fontWeight: FontWeight.w600,),),
                               )
                  ],
                 )
              
          
            ],
          ),
        ),
      ),
    );
  }
}