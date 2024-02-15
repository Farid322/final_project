import 'package:flutter/material.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});
  static String id = 'SignUppatient';
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
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        title: const Text(
          'Account Info',
          style: TextStyle(
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
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Name',
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Your Name',
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
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Age',
                )),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Age',
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
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'ID',
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your ID',
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
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Location',
                  maxLines: 1,
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Location',
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
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Experience',
                  maxLines: 1,
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Experience',
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
            const Custombutton(
              text: 'Save',
              width: 326,
              hieght: 47,
              fontsize: 18,
              radius: 15,
              color: kPrimaryColor,
              icon: null,
              herozintal: 120,
              textcolor: null,
            )
          ]))),
    );
  }
}
