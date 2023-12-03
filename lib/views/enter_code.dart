import 'package:flutter/material.dart';
import 'package:graduation_project/widget/login_page/custom_button.dart';
import 'package:graduation_project/widget/login_page/custom_text_form_field.dart';

class EnterCode extends StatelessWidget {
  const EnterCode({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 100),
            child: Column(
                  children: [
            Image.asset('assets/images/illustration (1).png'),
            const SizedBox(
              height: 38,
            ),
             const Text(
                 'Reset your password',
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
            'Please type something  you’ll remember',
            maxLines: 2,
            style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),

                   const SizedBox(
                    height: 40,
                  ), const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('NewPassword',)),
                    const SizedBox(height: 5,),
                
                 CustomTextFormField(hintText: 'must be 8 characters'),

                   
                  
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('confirm new password',)),
                    const SizedBox(height: 5,),
                
                 CustomTextFormField(hintText: 'repeate password'),

                 const SizedBox(
                  height:22 ,
                 ),
                 const CustomButton(text: 'Rest password')
                  ],
                ),
          ),
    );
  }
}