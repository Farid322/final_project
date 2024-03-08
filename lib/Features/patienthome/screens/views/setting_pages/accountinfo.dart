import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

class AccountInfoPatient extends StatelessWidget {
  const AccountInfoPatient({super.key});
  static String id = 'SignUppatient';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        automaticallyImplyLeading: true,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).go(RouterNames.SettingPagePatient);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        title: Text(
          S.of(context).Accountinfo,
          style: const TextStyle(
            color: Color(0xFF35364F),
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1.5,
            letterSpacing: 0.40,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
              child: Column(children: [
            Align(
                alignment:
                    isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  S.of(context).Name,
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: S.of(context).YourUsername,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 21,
                  ),
                  hintStyle: const TextStyle(fontFamily: 'Roboto'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Image.asset(
                    'assets/icons/user-edit.png',
                    width: 15,
                    height: 15,
                  )),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            Align(
                alignment:
                    isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  S.of(context).age,
                )),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                hintText: S.of(context).YourAge,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 21,
                ),
                hintStyle: const TextStyle(fontFamily: 'Roboto'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
                alignment:
                    isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                child: const Text(
                  'ID',
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: S.of(context).IDY,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 21,
                ),
                hintStyle: const TextStyle(fontFamily: 'Roboto'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            Align(
                alignment:
                    isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  S.of(context).location,
                  maxLines: 1,
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: S.of(context).enteryourlocation,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 21,
                ),
                hintStyle: const TextStyle(fontFamily: 'Roboto'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            Align(
                alignment:
                    isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  S.of(context).Experience,
                  maxLines: 1,
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: S.of(context).Enteryourexpr,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 21,
                ),
                hintStyle: const TextStyle(fontFamily: 'Roboto'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            Custombutton(
              text: S.of(context).save,
              width: 326,
              hieght: 47,
              fontsize: 18,
              radius: 15,
              color: kPrimaryColor,
              icon: null,
              herozintal: 120,
              textcolor: Colors.white,
            )
          ]))),
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
