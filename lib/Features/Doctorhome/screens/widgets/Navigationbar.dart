import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:graduation_project/core/routes/app_routes.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            selectedIndex: 0,
            backgroundColor: Colors.white,
            color: const Color.fromRGBO(14, 92, 109, 1),
            activeColor: const Color.fromRGBO(255, 255, 255, 1),
            gap: 8,
            padding: const EdgeInsets.all(16),
            tabBackgroundColor: const Color.fromARGB(255, 14, 91, 109),
            tabs: [
              GButton(
              onPressed: (){
                GoRouter.of(context).go(RouterNames.DoctorHome);
              },
                icon: Icons.home,
                text: 'Home',
              ),
              const GButton(
                icon: Icons.notifications,
                text: 'Notifcation',
              ),
              const GButton(
                icon: FontAwesomeIcons.message,
                text: 'Message',
              ),
              const GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ],
          ),
        ),
      ),
    );
  }
}
