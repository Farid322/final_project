import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/core/widgets2/costom_text_feild.dart';

class PrivacyPatient extends StatelessWidget {
  const PrivacyPatient({super.key});
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
                  Navigator.pop(context);
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
        centerTitle: true,
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        title: const Text(
          'Privacy',
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email Address',
                  )),
              const SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 21,
                    ),
                    hintStyle: const TextStyle(fontFamily: 'Roboto'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Image.asset(
                      'assets/icons/@.png',
                      width: 15,
                      height: 15,
                    )),
                obscureText: true,
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Country code',
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextFormFieldd(
                          hintText: '+012',
                          width: 80,
                          height: 56,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    width: 201,
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Mobile number',
                              maxLines: 1,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextFormFieldd(
                          hintText: '1024165373',
                          width: 150,
                          height: 56,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    maxLines: 1,
                  )),
              const SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 21,
                    ),
                    hintStyle: const TextStyle(fontFamily: 'Roboto'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Image.asset(
                      'assets/icons/eye.png',
                      width: 17,
                      height: 15,
                    )),
                obscureText: true,
              ),
              const SizedBox(height: 30),
              const Custombutton(
                text: 'Save',
                width: 326,
                hieght: 47,
                fontsize: 15,
                radius: 15,
                color: kPrimaryColor,
                icon: null,
                herozintal: 120,
                textcolor: Colors.white,
              ),
              const SizedBox(
                height: 13,
              ),
              Container(
                width: 326,
                height: 47,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x21000000),
                      blurRadius: 12,
                      offset: Offset(0, 0.5),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 19, right: 48),
                      child: Image.asset(
                        'assets/icons/google.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    const Text('Add your Google email')
                  ],
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Container(
                width: 326,
                height: 47,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x21000000),
                      blurRadius: 13,
                      offset: Offset(0, 0.5),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 19, right: 48),
                      child: Image.asset(
                        'assets/icons/facebook.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    const Text("Add your Facebook email"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
