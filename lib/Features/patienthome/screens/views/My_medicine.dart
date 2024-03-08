import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/custom_container_medicine.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

class MyMedicine extends StatefulWidget {
  const MyMedicine({super.key});

  @override
  State<MyMedicine> createState() => _MedicineState();
}

class _MedicineState extends State<MyMedicine> {
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
                  GoRouter.of(context).go(RouterNames.PatientHome);
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
          S.of(context).Medicine,
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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  right: isArabic() ? (0) : (180),
                  left: isArabic() ? (250) : (0)),
              child: Text(
                S.of(context).Mymedicine,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            CustomMedicine(
              text: S.of(context).Med1,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomMedicine(
              text: S.of(context).Med2,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomMedicine(
              text: S.of(context).Med3,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
