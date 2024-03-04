import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/setting_pages/widgets/itemProfile.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
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
        title: const Text(
          'Setting',
          style: TextStyle(
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
                GoRouter.of(context).push(RouterNames.AccountInfo);
              },
              child: itemProfile(
                'Account info',
                'name, age, gender,..etc',
                CupertinoIcons.person,
                () {},
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                GoRouter.of(context).push(RouterNames.Privacy);
              }, // Call the navigation method on button press
              child: itemProfile('Privacy', 'email, password, mobile number',
                  UniconsLine.lock, () {}),
            ),
            const SizedBox(height: 10),
            InkWell(
                onTap: () {
                  GoRouter.of(context).push(RouterNames.AboutUs);
                },
                child: itemProfile(
                    'About us', '', UniconsLine.info_circle, () {})),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                GoRouter.of(context).push(RouterNames.DoctorLoginPage);
              },
              child: itemProfile(
                'Logout',
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
      bottomNavigationBar: const NavBar(key: null),
    );
  }
}
