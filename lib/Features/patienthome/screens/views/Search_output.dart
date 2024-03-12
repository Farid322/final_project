import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/custom_output.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

class SearchOutput extends StatelessWidget {
  const SearchOutput({super.key});

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
                  GoRouter.of(context).go(RouterNames.Search);
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
        title: Column(
          children: [
            Text(
              S.of(context).SelectArea,
              style: const TextStyle(
                color: Color(0xFF35364F),
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 1.5,
                letterSpacing: 0.40,
              ),
            ),
            Text(
              S.of(context).Cairo,
              style: const TextStyle(
                color: Color(0xFF35364F),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                height: 1.5,
                letterSpacing: 0.40,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
                right: isArabic() ? (0) : (250),
                left: isArabic() ? (250) : (0),
              ),
              child: Text(
                S.of(context).AllDoctor,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            InkWell(
              onTap: () {
                GoRouter.of(context).go(RouterNames.DoctorProfile);
              },
              child: CustomOutput(
                image: 'assets/images/doctor2.png',
                head: 'Dr. Serana Gomez',
                title: S.of(context).Carddiologist,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                GoRouter.of(context).go(RouterNames.DoctorTwo);
              },
              child: CustomOutput(
                image: 'assets/images/doctor3.png',
                head: 'Dr. Simata Baroi',
                title: S.of(context).Carddiologist,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                GoRouter.of(context).go(RouterNames.DoctorThree);
              },
              child: CustomOutput(
                image: 'assets/images/doctor1 (1).png',
                head: 'Dr. Ashis Chandra',
                title: S.of(context).Carddiologist,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
