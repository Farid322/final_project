import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/setting_pages/widgets/itemProfile.dart';
import 'package:unicons/unicons.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        automaticallyImplyLeading: true,
        leading: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
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
            itemProfile(
              'Account info',
              'name, age, gender,..etc',
              CupertinoIcons.person,
              // Within the `FirstRoute` widget
              () {},
            ),
            const SizedBox(height: 10),
            itemProfile(
              'Privacy',
              'email, password, mobile number',
              UniconsLine.lock,
              () {
                // Call navigation method
              },
            ),
            const SizedBox(height: 10),
            itemProfile('About us', '', UniconsLine.info_circle, () {}),
            const SizedBox(height: 10),
            itemProfile(
              'Logout',
              '',
              UniconsLine.signout,
              () {},
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
