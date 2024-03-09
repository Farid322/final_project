import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';

class Erorremail extends StatelessWidget {
  const Erorremail({super.key});
  static String id = 'Erorremail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(50),
            vertical: ScreenUtil().setHeight(150)),
        child: Column(
          children: [
            Image.asset('assets/images/Character.jpg'),
            const SizedBox(
              height: 20,
            ),
            Text(
              S.of(context).Forgetpassword,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              S.of(context).Dontworry,
              maxLines: 2,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(
              height: 40,
            ),
            Align(
                alignment:
                    isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  S.of(context).emailaddress,
                )),
            const SizedBox(
              height: 5,
            ),
            CustomTextFormField(hintText: 'ex.Email@gamil.com'),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              text: S.of(context).SendCode,
              onTap: () {
                GoRouter.of(context).go(RouterNames.ResetPassword);
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(20),
                  horizontal: ScreenUtil().setWidth(40)),
              child: Row(
                children: [
                  Text(
                    S.of(context).Rememberpassword,
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).go(RouterNames.PatientLoginPage);
                    },
                    child: Text(
                      S.of(context).loginP,
                      style: const TextStyle(
                        color: Color(0xFF737373),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
