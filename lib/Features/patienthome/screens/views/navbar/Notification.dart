import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/widgets/customnotification.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

class NotificationScreenPatient extends StatefulWidget {
  const NotificationScreenPatient({super.key});

  @override
  State<NotificationScreenPatient> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreenPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        automaticallyImplyLeading: false,
        centerTitle: true,
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        title: Text(
          S.of(context).Notifications,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: isArabic() ? (0) : (15),
                  top: 20,
                  bottom: 5,
                  right: isArabic() ? (15) : (0)),
              child: Row(
                children: [
                  Text(
                    S.of(context).Today,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            customNotification(
              S.of(context).Remind,
              S.of(context).itis,
              const Color.fromRGBO(81, 136, 253, 0.5),
              S.of(context).Min,
            ),
            const Divider(
              thickness: 0.5,
            ),
            customNotification(
              S.of(context).Remind,
              S.of(context).itis,
              const Color.fromRGBO(126, 81, 253, 0.5),
              S.of(context).Min,
            ),
            const Divider(
              thickness: 0.5,
            ),
            customNotification(
              S.of(context).Notifications,
              S.of(context).itis,
              const Color.fromRGBO(253, 81, 81, 0.42),
              S.of(context).Min,
            ),
            const Divider(thickness: 0.5),
            Padding(
              padding: EdgeInsets.only(
                  left: isArabic() ? (0) : (15),
                  top: 20,
                  bottom: 5,
                  right: isArabic() ? (15) : (0)),
              child: Row(
                children: [
                  Text(
                    S.of(context).Yesterday,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            customNotification(
              S.of(context).Remind,
              S.of(context).itis,
              const Color.fromRGBO(81, 136, 253, 0.5),
              S.of(context).hour2,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarPatient(key: null),
    );
  }
}
