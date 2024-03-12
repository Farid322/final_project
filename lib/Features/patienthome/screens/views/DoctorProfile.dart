import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).go(RouterNames.SearchOutput);
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
        elevation: 0,
        title: const Text(
          "Dr.Serena Gome",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset('assets/images/doctor2.png', width: 375, height: 300),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: isArabic() ? (5) : (30),
                      right: isArabic() ? (20) : (5)),
                  child: Custombutton(
                    text: S.of(context).VoiceCall,
                    width: ScreenUtil().setWidth(102),
                    hieght: ScreenUtil().setHeight(38),
                    fontsize: 11.sp,
                    radius: 8,
                    color: const Color.fromRGBO(81, 190, 251, 0.74),
                    icon: Icons.call,
                    herozintal: isArabic() ? (5) : (10),
                    textcolor: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Custombutton(
                    text: S.of(context).VideoCall,
                    width: ScreenUtil().setWidth(102),
                    hieght: ScreenUtil().setHeight(38),
                    fontsize: 11,
                    radius: 8,
                    color: const Color.fromRGBO(126, 81, 251, 0.72),
                    icon: Icons.video_call_rounded,
                    herozintal: 10,
                    textcolor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 10),
                  child: Custombutton(
                    text: S.of(context).Message,
                    width: ScreenUtil().setWidth(102),
                    hieght: ScreenUtil().setHeight(38),
                    fontsize: 11.sp,
                    radius: 8,
                    color: const Color.fromRGBO(251, 136, 81, 0.72),
                    icon: Icons.message,
                    herozintal: isArabic() ? (16) : (12),
                    textcolor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: isArabic() ? (0) : (130),
                      left: isArabic() ? (130) : (0)),
                  child: Text(
                    S.of(context).MedicineHeartSpecialist,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: isArabic() ? (0) : (150),
                      left: isArabic() ? (240) : (0),
                      top: 5,
                      bottom: 10),
                  child: Text(
                    S.of(context).good,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: isArabic() ? (0) : (255),
                      left: isArabic() ? (240) : (0),
                      top: 10),
                  child: Text(
                    S.of(context).AboutDoctor,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, top: 5, bottom: 10),
                  child: Text(
                    S.of(context).AboutSerenainfo,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 35, right: 50, top: 3, bottom: 10),
                child: Column(
                  children: [
                    Text(
                      S.of(context).Patients,
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      '1.8K',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 50, top: 3, bottom: 10),
                child: Column(
                  children: [
                    Text(
                      S.of(context).Experience,
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      S.of(context).Years8,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 35, top: 3, bottom: 10),
                child: Column(
                  children: [
                    Text(
                      S.of(context).Review,
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      '3.8K',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 40, top: 25, bottom: 10),
            child: Custombutton(
              text: S.of(context).Add,
              width: 318,
              hieght: 52,
              fontsize: 16,
              radius: 8,
              color: const Color(0xFF0E5C6D),
              icon: null,
              herozintal: 110,
              textcolor: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
