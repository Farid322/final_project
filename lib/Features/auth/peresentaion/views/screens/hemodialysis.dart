import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/app_routes.dart';

class hemodialysis extends StatelessWidget {
  const hemodialysis({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 510,
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Ellipse 63.png"),
                  fit: BoxFit.cover),
            ),
            child: const Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 6,
                    ),
                    Icon(Icons.arrow_back, color: Colors.white),
                    SizedBox(
                      width: 7,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hemodialysis',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 150,
                    width: 315,
                    child: Text(
                      'Hemodialysis: is the most common type of dialysis and the one most people are aware of. ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
          ),
          InkWell(
            onTap: () {
              GoRouter.of(context).go(RouterNames.PatientRegisterPage);
            },
            child: Container(
                width: 151,
                height: 47,
                decoration: ShapeDecoration(
                  color: const Color(0xFFDF7861),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x210E5C6D),
                      blurRadius: 13,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Start',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset('assets/images/Hypochondriac (10) 1 (1).png')
        ],
      ),
    );
  }
}
