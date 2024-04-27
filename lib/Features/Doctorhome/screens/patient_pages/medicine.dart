import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/custom_container_medicine.dart';
import 'package:graduation_project/Features/Doctorhome/screens/view_model/cubit/add_medicine_cubit.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class Medicine extends StatelessWidget {
  Medicine({super.key});

  TextEditingController? medicineController1 = TextEditingController();
  TextEditingController? medicineController2 = TextEditingController();
  TextEditingController? medicineController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddMedicineCubit()..getMedicineList(),
      child: Scaffold(
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
        body: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20, right: 180),
                child: Text(
                  'Ahmed’s Medicine',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
              CustomMedicine(
                controller: medicineController1,
                text: 'Med 1 ',
              ),
              const SizedBox(
                height: 10,
              ),
              // CustomMedicine(
              //   controller: medicineController2,
              //   text: 'Med 2',
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // CustomMedicine(
              //   controller: medicineController3,
              //   text: 'Med 3',
              // ),
              const SizedBox(
                height: 10,
              ),
              Custombutton(
                text: 'Add Medicine',
                width: 151,
                hieght: 46,
                fontsize: 16,
                radius: 20,
                color: const Color(0xFF0E5C6D),
                icon: null,
                herozintal: 5,
                textcolor: Colors.white,
                onTap: () {
                  String medicine1 = medicineController1!.text;
                  BlocProvider.of<AddMedicineCubit>(context)
                      .addMedicine(medicine1);
                  // String medicine2 = medicineController2!.text;
                  // String medicine3 = medicineController3!.text;
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: const NavBar(),
      ),
    );
  }
}
