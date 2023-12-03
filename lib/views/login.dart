import 'package:flutter/material.dart';
import 'package:graduation_project/widget/login_page/custom_button.dart';

import '../widget/login_page/custom_text_form_field.dart';
import '../widget/login_page/social_linkes_category.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 90),
        child: Column(
          children: [
              const SizedBox(
                width: 343,
                 child: Text(' Log in',
                       style: TextStyle(
                          color: Colors.black,
                         fontSize: 30,
                       fontWeight: FontWeight.w700,
                     height: 0.04,
          
                ),
              ),
             ),
             const SizedBox(
              height: 16,
             ),
             const Text('Hello, welcome back to our account',
             textAlign: TextAlign.center,
             ),
             const SizedBox(
              height:49 ,
             ),
              const Align(
            alignment: Alignment.centerLeft,
            child: Text('Email adress',)),
            const SizedBox(height: 5,), 
            CustomTextFormField(hintText: 'ex.Email@gmail.com'),
             const SizedBox(
              height: 20,
             ),
              const Align(
            alignment: Alignment.centerLeft,
            child: Text('password',)),
            const SizedBox(height: 5,), 
            CustomTextFormField(hintText: '......'),
            

            const Row(
              children: [
                Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(
                  width: 55,
                ),
                 Text(
                  'Forget password?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomButton(text: 'log_in'),
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
                  Text('Don’t have an account? ',style: TextStyle(color:Color(0xFF737373),
                              fontSize: 15, fontWeight: FontWeight.w600),),
                             Text('sign-up',style: TextStyle(color: Color(0xFF737373),
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