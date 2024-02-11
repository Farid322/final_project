import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/Features/auth/peresentaion/widgets/social_linkes_category.dart';

class DoctorRegisterPage extends StatelessWidget {
  const DoctorRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 80),
          child: Column(
            children: [
              Image.asset('assets/images/Privacy policy 1.png'),
              const SizedBox(
                height: 29,
              ),
                CustomButton(text: 'log-in', onTap: () {
                 GoRouter.of(context).go(RouterNames.DoctorLoginPage);
               },),
              const SizedBox(
                height: 20,
              ),
                CustomButton(text: 'sign-up', onTap: () {
                 GoRouter.of(context).go(RouterNames.SignUpdoctor);
               },),

           const SizedBox(
            height: 20,
           ),
              const Padding(
                padding: EdgeInsets.only(left: 17),
                child: Row(
                  children: [
                    SocialLinkesCategory(iconImage: 'assets/images/google.svg'),
                    SizedBox(
                      width: 19,
                    ),
                    SocialLinkesCategory(iconImage: 'assets/images/Facebook.svg')
                  ],
                ),
              ),

              const SizedBox(
                height: 37,
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
                    height: 8,
                   ),
                    
                    const Text('contniue with Registration ',
                    style: TextStyle(color:Color(0xFF737373),
                                fontSize: 15, 
                                fontWeight: FontWeight.w600),),
                              


            ],
          ),
        ),
    );
  }
}