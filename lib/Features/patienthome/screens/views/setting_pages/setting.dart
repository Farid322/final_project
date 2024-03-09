import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/setting_pages/widgets/itemProfile.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:unicons/unicons.dart';

class SettingPagePatient extends StatelessWidget {
  const SettingPagePatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        automaticallyImplyLeading: false,
        centerTitle: true,
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        title: Text(
          S.of(context).Setting,
          style: const TextStyle(
            color: Color(0xFF35364F),
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1.5,
            letterSpacing: 0.40,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 0),
            Image.asset(
              'assets/images/setting_photo.png',
              width: 160,
              height: 160,
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                GoRouter.of(context).push(RouterNames.AccountInfoPatient);
              },
              child: itemProfile(
                S.of(context).Accountinfo,
                S.of(context).nameagegender,
                CupertinoIcons.person,
                () {},
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                GoRouter.of(context).push(RouterNames.PrivacyPatient);
              }, // Call the navigation method on button press
              child: itemProfile(
                  S.of(context).Privacy,
                  S.of(context).emailpasswordmobilenumber,
                  UniconsLine.lock,
                  () {}),
            ),
            const SizedBox(height: 10),
            InkWell(
                onTap: () {
                  GoRouter.of(context).push(RouterNames.AboutUsPatient);
                },
                child: itemProfile(
                    S.of(context).Aboutus, '', UniconsLine.info_circle, () {})),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                GoRouter.of(context).push(RouterNames.PatientLoginPage);
              },
              child: itemProfile(
                S.of(context).Logout,
                '',
                UniconsLine.signout,
                () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarPatient(key: null),
    );
  }
}
