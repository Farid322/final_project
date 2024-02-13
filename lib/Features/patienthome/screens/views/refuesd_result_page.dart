import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/utils/app_styles.dart';

class RefuesdResultPage extends StatelessWidget {
  const RefuesdResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 79),
        child: Column(
          children: [
           const Align(
              alignment: Alignment.topLeft,
              child:  Text('Your Result is',style: AppStyels.s18)),
           const SizedBox(height: 17),
            Container(
              width:327 ,
              height: 265,
              decoration:  ShapeDecoration(
                                shape:RoundedRectangleBorder(borderRadius:
                                BorderRadius.circular(13) ) ,
                                color: Colors.white,
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                            blurRadius: 9,
                                           offset: Offset(0, 0),
                                             spreadRadius: 4,
                     ),],),
              child: const Align(
                alignment: Alignment.center,
                child: Text('You can’t start the session, call the doctor please.')),
            ),
            const SizedBox(height: 213),
            const CustomButton(text: 'Go back '),
           const SizedBox(height: 16),
            const CustomButton(text: 'Start')
          ],
        ),
      ),
    );
  }
}