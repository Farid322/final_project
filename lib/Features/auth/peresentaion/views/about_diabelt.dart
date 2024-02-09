import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/Features/auth/peresentaion/widgets/custom_button.dart';

class AboutDiabelt extends StatelessWidget {
  const AboutDiabelt({super.key});
static String id= 'AboutDiabelt';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
       Column( 
         children: [ 
           const Padding(
            padding: EdgeInsets.symmetric(vertical: 50,horizontal: 18),
            child: Text.rich(
              TextSpan(
              children: [
                  TextSpan(
                      text: 'About\n',
                      style: TextStyle(
                          color: Color(0xFF515151),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          height: 0,
                      ),
                  ),
                  TextSpan(
                      text: 'Diabelt',
                      style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          height: 0,
                      ),
                  ),
              ],
              ),
              textAlign: TextAlign.center,
            ),
      
      ),
      
      const SizedBox(
        width: 320,
        child: Text('Hemodialysis is a machine filters your blood through a dialyzer, also known as an artificial kidney, with built-in safety checks to be sure the process is safe and effective. Home and in-center hemodialysis machines are very similar in function, though the home machine is much smaller.'
          , textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Roboto'
          ),
        ),
      ),
        const SizedBox(
          height: 10,
        ),
      Image.asset('assets/images/World health day 1.png'),
         const SizedBox(height: 47,),

           CustomButton(text: 'Get started', onTap: () {
            GoRouter.of(context).go(RouterNames.hemodialysis);
          },)
         ], 
       ),
      
    );
  }
}