import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/routes/app_routes.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: GNav(
        backgroundColor: Colors.white,
        color: const Color.fromRGBO(14, 92, 109, 1),
        activeColor: kPrimaryColor,
        gap: 8,
        padding: const EdgeInsets.all(20),
        onTabChange: (int index) {
          setState(() {
            selectedIndex = index;
          });

          // Handle navigation based on the selected index
          switch (index) {
            case 0:
              GoRouter.of(context).push(RouterNames.DoctorHome);

              break;
            case 1:
              GoRouter.of(context).push(RouterNames.NotificationScreen);
              break;
            case 2:
              GoRouter.of(context).push(RouterNames.Messanger);
              break;
            case 3:
              GoRouter.of(context).push(RouterNames.SettingPage);
              break;
          }
        },
        tabs: const [
          GButton(
            icon: Icons.home,
            iconSize: 30,
          ),
          GButton(
            icon: Icons.notifications,
            iconSize: 30,
          ),
          GButton(
            icon: FontAwesomeIcons.facebookMessenger,
          ),
          GButton(
            icon: Icons.person,
            iconSize: 30,
          )
        ],
      ),
    );
  }
}
