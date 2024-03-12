import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Custom_search.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
          S.of(context).SearchHere,
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
                  right: isArabic() ? (0) : (250),
                  left: isArabic() ? (250) : (0)),
              child: Text(
                S.of(context).SearchYour,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                  right: isArabic() ? (0) : (270),
                  left: isArabic() ? (250) : (0)),
              child: Text(
                S.of(context).Doctor,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
                textAlign: TextAlign.left,
              ),
            ),
            // CustomSearch(
            //   text: "Select Area",
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // CustomSearch(
            //   text: "Doctor",
            // ),
            const SizedBox(
              height: 10,
            ),
            CustomSearch(
              select: S.of(context).SelectArea,
              doctor: S.of(context).Doctor,
              date: S.of(context).SelectDate,
            ),
            InkWell(
              onTap: () {
                GoRouter.of(context).go(RouterNames.SearchOutput);
              },
              child: Custombutton(
                text: S.of(context).Search,
                width: 318,
                hieght: 52,
                fontsize: 16,
                radius: 8,
                color: const Color(0xFF0E5C6D),
                icon: null,
                herozintal: 110,
                textcolor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
