import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/Features/auth/peresentaion/widgets/custom_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
static String id ='ForgetPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 65),
        child: Padding(

          padding: const EdgeInsets.only(top: 170),
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
        'please choose way from those options to rest your password',
        maxLines: 2,
        style: TextStyle(color: Colors.grey, fontSize: 14),
        ),

          const SizedBox(
            height: 60,
          ), 
           CustomButton(text:'Send an email',onTap: () {
            GoRouter.of(context).go(RouterNames.Erorremail);
          }, ),
           
        

         const SizedBox(
          height: 170,
         ),
         const Text('Remember password ?login'),
            
          ],
        ),
        ),
        ),
    );
  }
}