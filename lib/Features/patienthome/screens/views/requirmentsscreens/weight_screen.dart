import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/requirments_button.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/utils/app_styles.dart';

import '../../../../../core/routes/app_routes.dart';

class WeightPage extends StatelessWidget {
  const WeightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
          child: Column(children: [
            const Center(child: Text('Diabelt', style: AppStyels.s23)),
            const SizedBox(height: 47),
            Center(child: Text(S.of(context).PleaseAnswer)),
            const SizedBox(height: 33),
            Container(
              width: 293,
              height: 390,
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
                    )
                  ]),
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Text(
                      '3/3',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(129, 129, 129, 1)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Text(S.of(context).waight,
                      style:
                          AppStyels.s18.copyWith(fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 238,
                  height: 56,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 21,
                        ),
                        hintText: 'ex.200 ',
                        hintStyle:
                            const TextStyle(fontFamily: 'Roboto', fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 21),
            Row(children: [
              TextButton(
                onPressed: () {
                  GoRouter.of(context).go(RouterNames.TemperaturePage);
                },
                child: Text(
                  S.of(context).back,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0E5C6D),
                      fontFamily: 'Roboto'),
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(140),
              ),
              Button(
                text: S.of(context).Next,
                onTap: () {
                  GoRouter.of(context).go(RouterNames.AccptedResultPage);
                },
              )
            ]),
          ]),
        ),
      ),
    );
  }
}
