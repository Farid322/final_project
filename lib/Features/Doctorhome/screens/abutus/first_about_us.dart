import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/abutus/second_about_us.dart';
import 'package:graduation_project/constant/constant.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});
  static String id = 'AboutDiabelt';

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        automaticallyImplyLeading: true,
        leading: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
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
                    'Chronic kidney disease (CKD) means your   kidneys are damaged and losing their ability to keep you healthy by filtering your blood. In the early stages of the disease, most people do not have symptoms. ',
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
            'assets/images/World health day 2.png',
            width: ScreenUtil().setWidth(290),
            height: ScreenUtil().setHeight(290),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondAboutUs()),
                  );
                },
                child: const Text('Next')),
          ),
        ],
      ),
    );
  }
}
