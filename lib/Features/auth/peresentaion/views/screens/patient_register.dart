import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/Features/auth/peresentaion/widgets/social_linkes_category.dart';
import 'package:graduation_project/generated/l10n.dart';

class PatientRegisterPage extends StatelessWidget {
  const PatientRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(30),
          vertical: ScreenUtil().setHeight(80),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/Privacy policy 1.png'),
            SizedBox(
              height: ScreenUtil().setHeight(29),
            ),
            CustomButton(
              text: S.of(context).loginP,
              onTap: () {
                GoRouter.of(context).go(RouterNames.PatientLoginPage);
              },
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            CustomButton(
              text: S.of(context).SignupP,
              onTap: () {
                GoRouter.of(context).go(RouterNames.SignUppatient);
              },
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Row(
                children: [
                  const SocialLinkesCategory(
                      iconImage: 'assets/images/google.svg'),
                  SizedBox(
                    width: ScreenUtil().setWidth(19),
                  ),
                  const SocialLinkesCategory(
                      iconImage: 'assets/images/Facebook.svg')
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(17),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: ScreenUtil().setWidth(110),
                  child: const Divider(
                    color: Color(0xFF5D5D5D),
                    height: 1,
                    thickness: 1,
                  ),
                ),
                const Text('OR'),
                SizedBox(
                  width: ScreenUtil().setWidth(110),
                  child: const Divider(
                    color: Color(0xFF5D5D5D),
                    height: 1,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).ContinueWithoutRegisteration,
              style: const TextStyle(
                  color: Color(0xFF737373),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
