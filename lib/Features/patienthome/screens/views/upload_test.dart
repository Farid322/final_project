import 'package:flutter/material.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/utils/app_asset.dart';
import 'package:graduation_project/utils/app_styles.dart';

class UploadTestPage extends StatelessWidget {
  const UploadTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 20),
        child: Container(
            width: 343,
            height: 535,
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
            child: Padding(
              padding: const EdgeInsets.all(21),
              child: Column(
                children: [
                  Text(S.of(context).Toupload, style: AppStyels.s18),
                  const SizedBox(height: 17),
                  Image.asset(AppAssets.uploadtestimage),
                  const SizedBox(height: 21),
                  CustomButton(
                    text: S.of(context).Usecamera,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 110,
                        child: Divider(
                          color: Color(0xFF5D5D5D),
                          height: 1,
                          thickness: 1,
                        ),
                      ),
                      Text(
                        S.of(context).or,
                      ),
                      const SizedBox(
                        width: 110,
                        child: Divider(
                          color: Color(0xFF5D5D5D),
                          height: 1,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  CustomButton(
                    text: S.of(context).UploadF,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
