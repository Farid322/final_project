import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/utils/app_styles.dart';

class AccptedResultPage extends StatelessWidget {
  const AccptedResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(20),
            vertical: ScreenUtil().setHeight(79)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Align(
                  alignment:
                      isArabic() ? Alignment.topRight : Alignment.topLeft,
                  child:
                      Text(S.of(context).YourResultis, style: AppStyels.s18)),
            ),
            SizedBox(height: ScreenUtil().setHeight(80)),
            Container(
              width: 327,
              height: 265,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
                color: Colors.white,
                shadows: const [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 9,
                    offset: Offset(0, 0),
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(S.of(context).Acceptedresult,
                    style: const TextStyle(
                        color: Color.fromRGBO(151, 151, 151, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(150)),
            InkWell(
                onTap: () {
                  GoRouter.of(context).go(RouterNames.WeightPage);
                },
                child: CustomButton(text: S.of(context).back)),
            const SizedBox(height: 16),
            InkWell(
                onTap: () {
                  GoRouter.of(context).go(RouterNames.Paitentsession);
                },
                child: CustomButton(text: S.of(context).start))
          ],
        ),
      ),
    );
  }
}
