import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/core/widgets/custom_text_form_field.dart';

class EnterCodeDoctor extends StatelessWidget {
  const EnterCodeDoctor({super.key});
  static String id = 'EnterCodedoctor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(20),
            vertical: ScreenUtil().setHeight(100)),
        child: Column(
          children: [
            Image.asset('assets/images/illustration (1).png'),
            const SizedBox(
              height: 38,
            ),
            const Text(
              'Reset your password',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Please type something  you’ll remember',
              maxLines: 2,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(
              height: 40,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'New Password',
                )),
            const SizedBox(
              height: 5,
            ),
            CustomTextFormField(hintText: 'must be 8 characters'),
            const SizedBox(
              height: 43,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Confirm New Password',
                )),
            const SizedBox(
              height: 5,
            ),
            CustomTextFormField(hintText: 'repeate password'),
            const SizedBox(
              height: 49,
            ),
            CustomButton(
              text: 'Rest Password',
              onTap: () {
                GoRouter.of(context).go(RouterNames.ResetPasswordDoctor);
              },
            )
          ],
        ),
      ),
    );
  }
}
