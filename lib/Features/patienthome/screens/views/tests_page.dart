import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/utils/app_asset.dart';
import 'package:graduation_project/utils/app_styles.dart';

import '../../../../core/routes/app_routes.dart';

class TestsPage extends StatelessWidget {
  const TestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E5C6D),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 78),
        child: Column(
          children: [
            Text('Medical Tests',style:AppStyels.s23.copyWith(color:Colors.white)),
            const SizedBox(height: 21),
           Image.asset(AppAssets.testsimage),
           const SizedBox(height: 17),
           const Text('You need to upload your',style: AppStyels.s14),
           const SizedBox(height: 14),
           Text('Medical Test Result',style:AppStyels.s23.copyWith(color: Colors.white,fontWeight: FontWeight.w500)),
           const SizedBox(height: 14),
           const Align(
            alignment: Alignment.center,
             child: Text('To can read your medical test, you must upload your medical test, So we put to you some options to can upload test .',
             style:AppStyels.s14 ),
           ),
           const SizedBox(height: 39),
          
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).go(RouterNames.UploadTestPage);
                        },
                        child: Container(
                                 width: 330,
                                  height: 52,
                                  
                                  decoration: ShapeDecoration(
                                 color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    
                                    borderRadius: BorderRadius.circular(8)),
                                  shadows: const [
                                      BoxShadow(
                                          color:Color(0x1EA6A6A6),
                                          blurRadius: 40,
                                          offset: Offset(0, 10),
                                          spreadRadius: 0,
                                      )
                                  ],),
                                   child:  const Center(
                                    child: Text(
                                      'Next',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:  Color(0xFF496664),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          
                                      ),
                                  ),
                                  )
                                  ),
                      ),
      

        ]),
      ),
    );
  }
}