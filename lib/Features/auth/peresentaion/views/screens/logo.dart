import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/utils/app_asset.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E5C6D),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 91),
        child: Column(
          children: [
            Image.asset(AppAssets.logoimage),
            const SizedBox(
              height: 131,
            ),
          
            InkWell(
              onTap: () {
                GoRouter.of(context).go(RouterNames.DoctorRegisterPage);
              },
              child: Container(
                  width: 330,
                  height: 52,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFDA7761),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x210E5C6D),
                        blurRadius: 40,
                        offset: Offset(0, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Doctor',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 23,
            ),
            InkWell(
              onTap: () {
                GoRouter.of(context).go(RouterNames.AboutDiabelt);
              },
              child: Container(
                  width: 330,
                  height: 52,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x210E5C6D),
                        blurRadius: 40,
                        offset: Offset(0, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'patient',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
