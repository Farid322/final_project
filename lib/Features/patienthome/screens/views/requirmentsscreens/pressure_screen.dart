import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/requirments_button.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/utils/app_styles.dart';

class PressurePage extends StatelessWidget {
  const PressurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
          child: Column(
            children: [
              const Center(child: Text('Diabelt', style: AppStyels.s23)),
              const SizedBox(height: 47),
              const Center(
                  child: Text(
                      'Please answer those Questions .To get more details ..')),
              const SizedBox(height: 40),
              Container(
                width: 293,
                height: 390,
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
                      )
                    ]),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Text(
                        '1/3',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(129, 129, 129, 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Text('what is your pressure rate?',
                        style: AppStyels.s18
                            .copyWith(fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    width: 238,
                    height: 56,
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 21,
                          ),
                          hintText: 'ex.120/80 ',
                          hintStyle: const TextStyle(
                              fontFamily: 'Roboto', fontSize: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 21),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Button(
                    text: 'Next',
                    onTap: () {
                      GoRouter.of(context).go(RouterNames.TemperaturePage);
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
