import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';

class Erorremail extends StatelessWidget {
  const Erorremail({super.key});
static String id = 'Erorremail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 37, vertical: 65),
        child: Column(
          children: [
            Image.asset('assets/images/Character.jpg'),
          const  SizedBox(
              height: 50,
            ),
            const  SizedBox(
                  height: 20,
                ),
                const Text(
           'Forget password ?',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
        color: Colors.black87,
        fontSize: 20,
        fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Don’t worry! It happens. Please enter the email associated with your account',
                maxLines: 2,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
        
              const SizedBox(
                height: 40,
              ), const Align(
                alignment: Alignment.centerLeft,
                child: Text('data',)),
                const SizedBox(height: 5,),
                CustomTextFormField(hintText: 'ex.Email@gamil.com'),
        const SizedBox(
          height: 30,
        ), 
         CustomButton(text:'Send code',onTap: () {
           GoRouter.of(context).go(RouterNames.EnterCode);
        }, ),
         
                
        
                 const SizedBox(
        height: 140,
                 ),
                 Align(
                  alignment: Alignment.center,
                   child: Row(
                     children: [
                       const Text('Remember password ?'),
                       TextButton( onPressed: (){
                                  GoRouter.of(context).go(RouterNames.DoctorLoginPage);
                                 }, child:  const Text('login',style: TextStyle(color: Color(0xFF737373),
                                                fontSize: 15,
                                                   fontWeight: FontWeight.w600,),),),
                     ],
                   ),
                 ),
          
        ],
                ),
        ),
    );
  }
}