import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/generated/l10n.dart';
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
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(20),
          vertical: ScreenUtil().setHeight(70),
        ),
        child: Column(children: [
          Text(S.of(context).MedicalTests,
              style: AppStyels.s23.copyWith(color: Colors.white)),
          const SizedBox(height: 5),
          Image.asset(AppAssets.testsimage),
          const SizedBox(height: 5),
          Text(S.of(context).Youneed, style: AppStyels.s14),
          const SizedBox(height: 5),
          Text(S.of(context).MedicalTestResult,
              style: AppStyels.s23
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w500)),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.center,
            child: Text(S.of(context).ToCan, style: AppStyels.s14),
          ),
          const SizedBox(height: 10),
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
                      color: Color(0x1EA6A6A6),
                      blurRadius: 40,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    S.of(context).Next,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF496664),
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                )),
          ),
        ]),
      ),
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
