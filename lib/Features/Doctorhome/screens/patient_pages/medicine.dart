import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/custom_container_medicine.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class Medicine extends StatefulWidget {
  const Medicine({super.key});

  @override
  State<Medicine> createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
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
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        title: const Text(
          'Medicine',
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
      body: const Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20, right: 180),
              child: Text(
                'Ahmed’s Medicine',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            CustomMedicine(
              text: 'Med 1 ',
            ),
            SizedBox(
              height: 10,
            ),
            CustomMedicine(
              text: 'Med 2',
            ),
            SizedBox(
              height: 10,
            ),
            CustomMedicine(
              text: 'Med 3',
            ),
            SizedBox(
              height: 10,
            ),
            Custombutton(
              text: 'Add Medicine',
              width: 151,
              hieght: 46,
              fontsize: 16,
              radius: 20,
              color: Color(0xFF0E5C6D),
              icon: null,
              herozintal: 5,
              textcolor: Colors.white,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
