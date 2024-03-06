import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/setting_pages/setting.dart';
import 'package:graduation_project/Features/patienthome/screens/views/setting_pages/setting.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/routes/app_routes.dart';

class ThirdAboutUsPatient extends StatelessWidget {
  const ThirdAboutUsPatient({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        automaticallyImplyLeading: true,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).go(RouterNames.SecondAboutUsPatient);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        title: const Text(
          'About Us',
          style: TextStyle(
            color: Color(0xFF35364F),
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1.5,
            letterSpacing: 0.40,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Row(
            children: [
              Padding(padding: EdgeInsets.only(right: 30)),
              Text(
                'About Hemobelt',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 30, left: 30, bottom: 10, top: 10),
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(39, 10, 10, 1)),
                  borderRadius: BorderRadius.circular(10)),
              //color: Colors.white,
              width: ScreenUtil().setWidth(327),
              height: ScreenUtil().setHeight(200),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Because kidneys are vital to so many of the bodys functions, kidney disease also increases your risk of having heart and blood vessel disease',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ksecondryColor,
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      height: 1.7,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/images/Medical prescription (1) 1.png',
            width: ScreenUtil().setWidth(400),
            height: ScreenUtil().setHeight(400),
            alignment: Alignment.bottomCenter,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 27),
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                height: 47,
                minWidth: 293,
                color: const Color.fromRGBO(14, 92, 109, 1),
                textColor: Colors.white,
                onPressed: () {
                  GoRouter.of(context).go(RouterNames.SettingPagePatient);
                },
                child: const Text('Done')),
          ),
        ],
      ),
    );
  }
}
