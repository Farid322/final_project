import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/core/widgets/custom_text_form_field.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

class EnterCode extends StatelessWidget {
  const EnterCode({super.key});
  static String id = 'EnterCode';
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
            Text(
              S.of(context).Restpassword,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).pleasetype,
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
                  S.of(context).Newpassword,
                )),
            const SizedBox(
              height: 5,
            ),
            CustomTextFormField(
              hintText: S.of(context).mustbe8characters,
            ),
            const SizedBox(
              height: 43,
            ),
            Align(
                alignment:
                    isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  S.of(context).ConfirmPassword,
                )),
            const SizedBox(
              height: 5,
            ),
            CustomTextFormField(hintText: S.of(context).repeatpassword),
            const SizedBox(
              height: 49,
            ),
            CustomButton(
              text: S.of(context).Restpassword,
              onTap: () {
                GoRouter.of(context).go(RouterNames.ResetPassword);
              },
            )
          ],
        ),
      ),
    );
  }
}
