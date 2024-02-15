import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            selectedIndex: 0,
            backgroundColor: Colors.white,
            color: Color.fromRGBO(14, 92, 109, 1),
            activeColor: Color.fromRGBO(255, 255, 255, 1),
            gap: 8,
            padding: EdgeInsets.all(16),
            tabBackgroundColor: Color.fromARGB(255, 14, 91, 109),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.notifications,
                text: 'Notifcation',
              ),
              GButton(
                icon: FontAwesomeIcons.message,
                text: 'Message',
              ),
              GButton(
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
