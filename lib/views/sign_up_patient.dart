

import 'package:flutter/material.dart';
import 'package:graduation_project/widget/login_page/custom_button.dart';
import 'package:graduation_project/widget/login_page/custom_text_form_field.dart';
import 'package:graduation_project/widget/login_page/social_linkes_category.dart';

class SignUppatient extends StatelessWidget {
  const SignUppatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical:70 ),
        child: Column(
          children: [
             const SizedBox(
              width: 343,
               child: Text('Create account',
                     style: TextStyle(
                        color: Colors.black,
                       fontSize: 30,
                     fontWeight: FontWeight.w700,
                   height: 0.04,
        
              ),
            ),
           ),
            const SizedBox(height: 5,),
            const Align(
            alignment: Alignment.centerLeft,
            child: Text('UserName',)),
            const SizedBox(height: 5,), 
            CustomTextFormField(hintText: 'ex.LaraAlaa'),
            
             const Align(
            alignment: Alignment.centerLeft,
            child: Text('Email adress',)),
            const SizedBox(height: 5,), 
            CustomTextFormField(hintText: 'Your email'),
        
            Row(children:
               [const Align(  alignment: Alignment.centerLeft,
            child: Text('contry code',)),
              CustomTextFormField(hintText: '+012'),
                    const Align(
            alignment: Alignment.centerLeft,
            child: Text('Mobilenumber',)),
              CustomTextFormField(hintText: '1024165373'),
        
              ],
              ),
        
               const Align(
            alignment: Alignment.centerLeft,
            child: Text('password',)),
            const SizedBox(height: 5,), 
            CustomTextFormField(hintText: '......'),
        
            const Align(
            alignment: Alignment.centerLeft,
            child: Text(' confirm password',)),
            const SizedBox(height: 5,), 
            CustomTextFormField(hintText: '......'),
        
            const Align(
            alignment: Alignment.centerLeft,
            child: Text('Par code',)),
            const SizedBox(height: 5,), 
            CustomTextFormField(hintText: '02907484648358'),
        
            const CustomButton(text: 'sign Up'),
            
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
        
                  const SocialLinkesCategory(iconImage: 'assets/images/google.svg'),
                 const SizedBox(height: 5,),
                  const SocialLinkesCategory(iconImage: 'assets/images/Facebook.svg'),
        
        
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
    );
  }
}